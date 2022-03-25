//
//  Answers.swift
//  What kind of flower are you
//
//  Created by Юлия Миронова on 19.03.2022.
//

struct Answer {
    let text: String
    let type: FlowerType
}

enum FlowerType: Character {
    case cactus = "🌵"
    case tulip = "🌷"
    case sunflower = "🌻"
    case rose = "🌹"
    
    var definition: String {
        switch self {
        case .cactus:
            return "Окружающие ценят вас за характер, который вы проявляете во всем, особенно в работе."
        case .tulip:
            return "Вы привыкли, что нравитесь всем и всегда. И если вдруг не встречаете восторженной реакции, из кожи вон лезете, чтобы очаровать собеседника."
        case .sunflower:
            return "Это цветок сильных духом и телом людей. Вид у этих людей обычно очень решительный."
        case .rose:
            return "Вы не склонны раскрывать перед первым встречным свою душу. Зато знаете, как все должно быть, и следуете правилам жизни."
        }
    }
}
