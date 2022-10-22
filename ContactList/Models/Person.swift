//
//  Person.swift
//  ContactList
//
//  Created by Andrey Sandler on 18.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullname: String {
        name + " " + surname
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0..<iterationCount {
            persons.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    email: emails[index],
                    phoneNumber: phoneNumbers[index]
                )
            )
        }
        
        return persons
    }
}
