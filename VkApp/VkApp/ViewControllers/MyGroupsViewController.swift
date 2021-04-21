//
//  MyGroupsViewController.swift
//  VkApp
//
//  Created by Macbook on 20.04.2021.
//

import UIKit

class MyGroupsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addGroup(unwindSegue: UIStoryboardSegue) {
        guard let allGroupsViewController = unwindSegue.source as? AllGroupsViewController else { return }
        guard let indexPath = allGroupsViewController.tableView.indexPathForSelectedRow else { return }
        var newGroup = listOfAllGroups[indexPath.row]
        if !newGroup.isMyGroup {
            listOfAllGroups[indexPath.row].isMyGroup.toggle()
            newGroup.isMyGroup.toggle()
            listOfMyGroups.append(newGroup)
            tableView.reloadData()
        }
    }
}

extension MyGroupsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfMyGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupTableViewCell", for: indexPath) as? MyGroupTableViewCell else { return UITableViewCell() }
        cell.avatarImage.image = UIImage(named: listOfMyGroups[indexPath.row].imagePath)
        cell.name.text = listOfMyGroups[indexPath.row].name
        cell.theme.text = listOfMyGroups[indexPath.row].theme.rawValue
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let groupToDelete = listOfMyGroups[indexPath.row]
            if let indexOfGroupToDelete = listOfAllGroups.firstIndex(where: { $0.isEqual(to: groupToDelete) }) {
                listOfAllGroups[indexOfGroupToDelete].isMyGroup.toggle()
            }
            listOfMyGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
