//
//  GroupsViewController.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import UIKit
import RealmSwift
import SwiftUI

class GroupsViewController: UIViewController {

    let gateway = GroupsGateway(
        network: NetworkController(),
        dataBase: RealmStorage()
    )

    var groupsViewPosts = [GroupsPostViewModel]()
//    var groupsFromRealm = [GroupsRealm]()
//
//    var realmNotification: NotificationToken?
//    var firstGroupName: NotificationToken?

    let avatar: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let name: UILabel = {
        let label = UILabel()
        label.textColor = .brown
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let descript: UILabel = {
        let label = UILabel()
        label.textColor = .brown
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let groupsTableView: UITableView = UITableView()
    let nibNameForCell = "CellForPeopleAndGroups"
    let cellForPeopleAndGroupsReuseIdentifier = "cellForPeopleAndGroupsReuseIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupBarItem()

        gateway.loadPosts{ [weak self] post in
            guard let self = self else { return }
            self.groupsViewPosts = post
            self.groupsTableView.reloadData()
        }

//        guard let realm = try? Realm() else { return }
//        makeGroupsObserver(realm: realm)
//        groupsTableView.reloadData()
//
//        firstGroupName = realm
//            .objects(GroupsRealm.self)
//            .first?
//            .observe(keyPaths: [], { (changes: ObjectChange<GroupsRealm>) in
//                switch changes {
//                case .error(let error): print(error)
//                case .change(let value, let propertiesArray): print("\(value.name) --> \(propertiesArray)")
//                case .deleted: print("delited")
//
//                }
//            })
    }
}


extension GroupsViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupsViewPosts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellForPeopleAndGroupsReuseIdentifier, for: indexPath) as? CellForPeopleAndGroups
        else { return UITableViewCell() }

        cell.backgroundColor = .white

        let nameGroup = groupsViewPosts[indexPath.row].name
        let avatarGroup = groupsViewPosts[indexPath.row].avatar

        let url = URL(string: avatarGroup)

        cell.imageView?.showImage(with: url)
        cell.configurePeopleAndGroupsCell(nameLabel: nameGroup, description: nil)

        return cell
    }
}

extension GroupsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
