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
        let names = DataStore().names.shuffled()
        let surnames = DataStore().surnames.shuffled()
        let emails = DataStore().emails.shuffled()
        let phoneNumbers = DataStore().phoneNumbers.shuffled()
        
        var persons: [Person] = []
        
        for index in 0..<names.count {
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
