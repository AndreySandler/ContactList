//
//  Person.swift
//  ContactList
//
//  Created by Andrey Sandler on 18.10.2022.
//

struct Person {
    let fullName: String
    let email: String
    let phoneNumber: String
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        var names = DataManager().names.shuffled()
        var surnames = DataManager().surnames.shuffled()
        var emails = DataManager().emails.shuffled()
        var phoneNumbers = DataManager().phoneNumbers.shuffled()
        
        DataManager().names.forEach { _ in
            persons.append(
                Person(
                    fullName: names.remove(at: 0) + " " + surnames.remove(at: 0),
                    email: emails.remove(at: 0),
                    phoneNumber: phoneNumbers.remove(at: 0)
                )
            )
        }
        
        return persons
    }
}
