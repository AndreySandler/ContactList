//
//  ContactViewController.swift
//  ContactList
//
//  Created by Andrey Sandler on 18.10.2022.
//

import UIKit

class ContactViewController: UITableViewController {
    
    // MARK: - Public Properties
    var persons: [Person] = []

    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullname
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - UINavigationController

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? ContactDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        detailsVC?.person = persons[indexPath.row]
    }
}
