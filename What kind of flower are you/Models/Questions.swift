//
//  Questions.swift
//  What kind of flower are you
//
//  Created by Юлия Миронова on 19.03.2022.
//

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        [
            Question(
                text: "Какую погоду вы больше любите?",
                type: .single,
                answers: [
                    Answer(text: "Дождливую", type: .cactus),
                    Answer(text: "Солнечную", type: .sunflower),
                    Answer(text: "Ветренную", type: .rose),
                    Answer(text: "Пасмурную", type: .tulip),
                ]
            ),
            Question(
                text: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(text: "Гулять", type: .tulip),
                    Answer(text: "Читать", type: .rose),
                    Answer(text: "Спать", type: .cactus),
                    Answer(text: "Тусоваться", type: .sunflower),
                ]
            ),
            Question(
                text: "Любите ли вы общение?",
                type: .ranged,
                answers: [
                    Answer(text: "Ненавижу", type: .cactus),
                    Answer(text: "Избегаю", type: .sunflower),
                    Answer(text: "Нейтрально", type: .rose),
                    Answer(text: "Обожаю", type: .tulip),
                ]
            )
        ]
    }
}
