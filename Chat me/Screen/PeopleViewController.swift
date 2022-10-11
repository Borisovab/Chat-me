//
//  PeopleViewController.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import UIKit

class PeopleViewController: UIViewController {

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


extension PeopleViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellForPeopleAndGroupsReuseIdentifier, for: indexPath) as? CellForPeopleAndGroups
        else { return UITableViewCell() }
        cell.backgroundColor = #colorLiteral(red: 0.8133922219, green: 1, blue: 0.9746926427, alpha: 1)
        cell.configurePeopleAndGroupsCell(avatarImage: UIImage(systemName: "heart"), nameLabel: "Name", description: "Description")
        return cell
    }


}

extension PeopleViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
