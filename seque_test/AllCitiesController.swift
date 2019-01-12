//
//  AllCitiesController.swift
//  seque_test
//
//  Created by Alex on 11.01.19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class AllCitiesController: UITableViewController {

    let cities = [
        "Moskow",
        "Krasnoyarsk",
        "Novosibirsk",
        "Abakan",
        "Hamburg",
        "Berlin"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cities.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllCitiesCell", for: indexPath) as! AllCitiesCell

        let city = cities[indexPath.row]
        
        cell.namesCities.text = city
        
        return cell
    }
}
