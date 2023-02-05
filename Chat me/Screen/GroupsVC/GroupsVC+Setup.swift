//
//  GroupsVC+Setup.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import Foundation
import SwiftUI

extension GroupsViewController {

    func setupBarItem() {
        navigationController?.tabBarItem.title = "Groups"
        navigationController?.tabBarItem.image = UIImage(systemName: "person.3")

        navigationItem.title = "Groups"
    }

    func setupTableView() {
        let width = self.view.bounds.width
        let height = self.view.bounds.height
        groupsTableView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.view.addSubview(groupsTableView)
        groupsTableView.dataSource = self
        groupsTableView.delegate = self

        groupsTableView.register(UINib(nibName: nibNameForCell, bundle: nil), forCellReuseIdentifier: cellForPeopleAndGroupsReuseIdentifier)
    }
}
