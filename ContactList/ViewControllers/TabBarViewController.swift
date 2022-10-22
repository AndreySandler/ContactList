//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Andrey Sandler on 22.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactVC = viewControllers?.first as? ContactViewController else { return }
        guard let secondContactVC = viewControllers?.last as? SecondContactViewController else { return }
        
        let persons  = Person.getPerson()
        
        contactVC.persons = persons
        secondContactVC.persons = persons
    }
}
