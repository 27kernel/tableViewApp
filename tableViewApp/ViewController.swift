//
//  ViewController.swift
//  tableViewApp
//
//  Created by Ruslan Baigeldiyev on 13.01.2023.
//

import UIKit
import SnapKit

struct TeslaCar {
    let name: String
    let description: String
    let price: String
    let image: String
}

class ViewController: UITableViewController {
    // array to hold the cars
    var teslaCars = [TeslaCar]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // populate the teslaCars array with sample data
        teslaCars = [
            TeslaCar(name: "Model S", description: "Capacity: 373 miles.", price: "Price: $69,420", image: "modelS"),
            TeslaCar(name: "Model 3", description: "Capacity: 358 miles.", price: "Price: $35,190", image: "model3"),
            TeslaCar(name: "Model X", description: "Capacity: 371 miles.", price: "Price: $81,190", image: "modelX"),
            TeslaCar(name: "Model Y", description: "Capacity: 326 miles.", price: "Price: $41,190", image: "modelY"),
            TeslaCar(name: "Cybertrack", description: "Capacity: 500 miles.", price: "Price: $39,900", image: "cybertrack")
        ]
        
        tableView.register(TeslaCarTableViewCell.self, forCellReuseIdentifier: "TeslaCarCell")
        //tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 500
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teslaCars.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeslaCarCell", for: indexPath) as! TeslaCarTableViewCell

        let teslaCar = teslaCars[indexPath.row]
        cell.nameLabel.text = teslaCar.name
        //cell.nameLabel.text = UIFont(name:"HelveticaNeue-Bold", size: 17.0)
        cell.descriptionLabel.text = teslaCar.description
        cell.priceLabel.text = teslaCar.price
        cell.teslaCarImageView.image = UIImage(named: teslaCar.image)

        return cell
    }
}
