//
//  AllGroupsViewController.swift
//  VkApp
//
//  Created by Macbook on 20.04.2021.
//

import UIKit

class AllGroupsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "GroupCell", bundle: nil), forCellReuseIdentifier: "GroupCell")
    }
}

extension AllGroupsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfAllGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let groupCell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as? GroupCell else { return UITableViewCell() }
        groupCell.photo.image = UIImage(named: listOfAllGroups[indexPath.row].imagePath)
        groupCell.name.text = listOfAllGroups[indexPath.row].name
        groupCell.theme.text = listOfAllGroups[indexPath.row].theme.rawValue
        return groupCell
    }
    
    
}
