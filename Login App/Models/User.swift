//
//  Person.swift
//  Login App
//
//  Created by Swift on 19.08.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person

    static func getUserData() -> User {
        User(
            login: "1",
            password: "1",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let bio: String
    let education: Education
    let hobby: Hobby

    var fullName: String {
        "\(name) \(surname)"
    }

    static func getPerson() -> Person {
        Person(
            name: " Максим",
            surname: "Ласкин",
            age: "28",
            bio: "Здесь немного описания обо мне",
            education: Education.getEducationData(),
            hobby: Hobby.getHobbyInfo()
        )
    }
}

struct Education {
    let city: String
    let university: String
    let expirationDate: String

    static func getEducationData() -> Education {
        Education(
            city: "Вологда",
            university: " ВГУ",
            expirationDate: "2016"
        )
    }
}

struct Hobby {
    let title: String
    let description: String


    static func getHobbyInfo() -> Hobby {
        Hobby(
            title: "LEGO - Анимация",
            description: """
            Привет! С 2017 по начало 2022 года я занимался созданием stopmotion LEGO анимации. Так же, активно вёл соцсети: Тикток и Инстаграм. К сожалению илb счастью, 24 февраля всё изменилось. Теперь пробуем новые пути. Если нужна помощь по LEGO, буду рад помочь! :)
            """
        )
    }
}
