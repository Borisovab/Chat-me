//
//  PeopleViewController.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import UIKit
import RealmSwift
import SwiftUI

class PeopleViewController: UIViewController {

    let gateWay = PeopleGateway(
        network: NetworkController(),
        dataBase: RealmStorage()
    )

    var peopleViewPosts = [PeoplePostViewModel]()
//    var peopleFromRealm = [PeopleRealm]()
//
//    var realmNotification: NotificationToken?
//    var firstPeopleName: NotificationToken?

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

    let peopleTableView: UITableView = UITableView()
    let nibNameForCell = "CellForPeopleAndGroups"
    let cellForPeopleAndGroupsReuseIdentifier = "cellForPeopleAndGroupsReuseIdentifier"


    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabelView()
        setupBarItem()

        gateWay.loadPosts { [weak self] post in
            guard let self = self else { return }
            self.peopleViewPosts = post
            self.peopleTableView.reloadData()
        }

//        guard let realm = try? Realm() else { return }
//        makePeopleObserver(realm: realm)
//        peopleTableView.reloadData()

//        firstPeopleName = realm
//            .objects(PeopleRealm.self)
//            .first?
//            .observe(keyPaths: [], { (changes: ObjectChange<PeopleRealm>) in
//                switch changes {
//                case .error(let error): print(error)
//                case .change(let value, let propertiesArray): print("\(value.firstName) --> \(propertiesArray)")
//                case .deleted: print("delited")
//                }
//            })

    }
    
}


extension PeopleViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleViewPosts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellForPeopleAndGroupsReuseIdentifier, for: indexPath) as? CellForPeopleAndGroups
        else { return UITableViewCell() }

        cell.backgroundColor = .white

        let namePeople = peopleViewPosts[indexPath.row].firstName
        let lastNamePeople = peopleViewPosts[indexPath.row].lastName
        let avatarPeople = peopleViewPosts[indexPath.row].avatar

        let url = URL(string: avatarPeople)

        cell.imageView?.showImage(with: url)
        cell.configurePeopleAndGroupsCell(nameLabel: namePeople, description: lastNamePeople)

        //        cell.avatar.contentMode = .scaleAspectFit
        //        cell.avatar.clipsToBounds = true
        //        cell.avatar.layer.cornerRadius = (self.avatar.frame.size.height) / 2

        return cell
    }
}

extension PeopleViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
