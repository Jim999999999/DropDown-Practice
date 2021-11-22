//
//  TableViewController.swift
//  DropDown Practice
//
//  Created by Jim on 11/20/21.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        startupStores()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    
    func startupStores()  {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.hidesBarsOnSwipe = true
        navigationItem.title = "Stores"
    
       
        navigationItem.rightBarButtonItem = itemsBarButtonItem
        
        
    }
    
    lazy var itemsBarButtonItem: UIBarButtonItem = {
        let barButtonItem = UIBarButtonItem(title: "Add Item", style: .plain, target: self, action: #selector(itemTapped))
        barButtonItem.tintColor = UIColor(named: "Dark")
        return barButtonItem
    }()

    @objc func itemTapped() {
        print("Item Tapped")
        performSegue(withIdentifier: "addItem", sender: nil)
    }
    
    
}
