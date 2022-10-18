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
        [
            Person(
                fullName: "\(DataManager().names.randomElement() ?? "") \(DataManager().surnames.randomElement() ?? "")",
                email: DataManager().emails.randomElement() ?? "",
                phoneNumber: DataManager().phoneNumbers.randomElement() ?? ""
            ),
            Person(
                fullName: "\(DataManager().names.randomElement() ?? "") \(DataManager().surnames.randomElement() ?? "")",
                email: DataManager().emails.randomElement() ?? "",
                phoneNumber: DataManager().phoneNumbers.randomElement() ?? ""
            ),
            Person(
                fullName: "\(DataManager().names.randomElement() ?? "") \(DataManager().surnames.randomElement() ?? "")",
                email: DataManager().emails.randomElement() ?? "",
                phoneNumber: DataManager().phoneNumbers.randomElement() ?? ""
            ),
            Person(
                fullName: "\(DataManager().names.randomElement() ?? "") \(DataManager().surnames.randomElement() ?? "")",
                email: DataManager().emails.randomElement() ?? "",
                phoneNumber: DataManager().phoneNumbers.randomElement() ?? ""
            ),
            Person(
                fullName: "\(DataManager().names.randomElement() ?? "") \(DataManager().surnames.randomElement() ?? "")",
                email: DataManager().emails.randomElement() ?? "",
                phoneNumber: DataManager().phoneNumbers.randomElement() ?? ""
            ),
            Person(
                fullName: "\(DataManager().names.randomElement() ?? "") \(DataManager().surnames.randomElement() ?? "")",
                email: DataManager().emails.randomElement() ?? "",
                phoneNumber: DataManager().phoneNumbers.randomElement() ?? ""
            )
        ]
    }
}
