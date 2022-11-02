//
//  PersonsModel.swift
//  ContactListSwiftUIApp
//
//  Created by 19543442 on 01.11.2022.
//

import Foundation
import SwiftUI

class Person: NSObject, Identifiable {
   
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    init(name: String, surname: String, phoneNumber: String, email: String) {
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
        self.email = email
    }
}

extension Person {
    
//    static func getRandomList() -> Person {
//
//        var persons: Person
//        let data = DataManager()
//
//
//    }

    static func getPersonList() -> [Person] {
        
        var persons = [Person]()
        let data = DataManager()
        
        let namesShuffled = data.names.shuffled()
        let surnameShuffled = data.surnames.shuffled()
        let phonesShuffled = data.phoneNambers.shuffled()
        let emailsShuffled = data.emails.shuffled()
        
        for index in 0..<data.names.count {
        
            persons.append(Person(
                name: namesShuffled[index],
                surname: surnameShuffled[index],
                phoneNumber: phonesShuffled[index],
                email: emailsShuffled[index]))
        }
     return persons
    }
    
}
