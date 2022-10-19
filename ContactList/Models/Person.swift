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
        var names = DataStore().names.shuffled()
        var surnames = DataStore().surnames.shuffled()
        var emails = DataStore().emails.shuffled()
        var phoneNumbers = DataStore().phoneNumbers.shuffled()
        
        DataStore().names.forEach { _ in
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
