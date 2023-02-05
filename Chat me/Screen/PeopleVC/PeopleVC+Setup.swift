//
//  PeopleVC+.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import Foundation
import SwiftUI

extension PeopleViewController {

    //TODO: - Разобраться, Почему не могу изменть цвет view?
    func setupBarItem() {
        navigationController?.tabBarItem.title = "People"
        navigationController?.tabBarItem.image = UIImage(systemName: "person.2")
//        navigationController?.view.backgroundColor = .systemRed
        navigationItem.title = "People"
    }

    func setupTabelView() {
        let width = self.view.bounds.width
        let height = self.view.bounds.height
        peopleTableView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.view.addSubview(peopleTableView)

        peopleTableView.dataSource = self
        peopleTableView.delegate = self

        peopleTableView.register(UINib(nibName: nibNameForCell, bundle: nil), forCellReuseIdentifier: cellForPeopleAndGroupsReuseIdentifier)
    }
}
