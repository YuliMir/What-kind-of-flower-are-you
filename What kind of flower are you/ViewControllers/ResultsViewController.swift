//
//  ResultsViewController.swift
//  What kind of flower are you
//
//  Created by Юлия Миронова on 19.03.2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    
    @IBOutlet var resultFlowerLabel: UILabel!
    @IBOutlet var descriptionFlowerLabel: UILabel!
    
    var resultFlower: String!
    var descriptionFlower: String!
    var chooses: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultFlowerLabel.text = resultFlower
        descriptionFlowerLabel.text = descriptionFlower
        
        navigationItem.hidesBackButton = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        countingTheresults()
    }
}
extension ResultsViewController {

    private func countingTheresults() {
        var frequencyOfFlowers: [FlowerType : Int] = [:]
        let flowers = chooses.map { $0.type }
        
        for flower in flowers {
            if let flowerTypeCount = frequencyOfFlowers[flower] {
                frequencyOfFlowers.updateValue(flowerTypeCount + 1, forKey: flower)
            } else {
                frequencyOfFlowers[flower] = 1
            }
        }
        
        let sortedFrequencyOfFlowers = frequencyOfFlowers.sorted { $0.value > $1.value }
        guard let mostFrequencyFlower = sortedFrequencyOfFlowers.first?.key else {return}
        
        updateUI(with: mostFrequencyFlower)
    }

    private func updateUI(with flower: FlowerType?) {
        resultFlowerLabel.text = "Вы - \(flower?.rawValue ?? "🌵")"
        descriptionFlowerLabel.text = flower?.definition ?? ""
    }
}


