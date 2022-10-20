//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Andrey Sandler on 18.10.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = person.fullname
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
