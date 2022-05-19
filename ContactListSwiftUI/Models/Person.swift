//
//  Person.swift
//  PersonList
//
//  Created by Евгений Волошенко on 02.04.2022.
//

import Foundation

struct Person: Identifiable {
    
    
    var id = UUID()
    
    let firstName: String
    let secondName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getPersons() -> [Person] {
        
        var personList: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let secondNames = DataManager.shared.secondNames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let count = min(firstNames.count, secondNames.count,
                        emails.count, phones.count)
        
        for index in 0 ..< count {
            let person = Person(firstName: firstNames[index],
                                secondName: secondNames[index],
                                email: emails[index],
                                phone: phones[index])
            personList.append(person)
        }
        return personList
    }
}

