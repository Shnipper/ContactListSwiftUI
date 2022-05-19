//
//  DataManager.swift
//  PersonList
//
//  Created by Евгений Волошенко on 02.04.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var firstNames = ["John", "Sharon", "Aaron", "Steven", "Nicola",
                      "Ted", "Bruce", "Carl", "Allan", "Bob"]
    
    var secondNames = ["Murphy", "Jankin", "Williams", "Black", "Robertson",
                     "Butler", "Isaacson", "Smith", "Pennyworth", "Ferguson"]
    
    var emails = ["012@mail.ru", "123@mail.ru", "234@mail.ru", "345@mail.ru", "456@mail.ru",
                  "567@mail.ru", "678@mail.ru", "789@mail.ru", "890@mail.ru", "901@mail.ru"]
    
    var phones = ["00000", "11111", "22222", "33333", "44444",
                  "55555", "66666", "77777", "88888", "99999"]
    
    private init () {}
}
