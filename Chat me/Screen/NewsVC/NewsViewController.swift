//
//  NewsViewController.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import UIKit

class NewsViewController: UIViewController {

    let newsTabelView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    let firstnibNameForCell = "FirstPartNewsTableViewCell"
    let firstPartNewsTableViewCellReuseIdentifier = "firstPartNewsTableViewCellReuseIdentifier"

    let secondnibNameForCell = "SecondPartNewsTableViewCell"
    let secondPartNewsTableViewCellReuseIdentifier = "secondPartNewsTableViewCellReuseIdentifier"

    let thirdnibNameForCell = "ThirdPartNewsTableViewCell"
    let thirdPartNewsTableViewCellReuseIdentifier = "thirdPartNewsTableViewCellReuseIdentifier"

    let fourthnibNameForCell = "FourthPartNewsTableViewCell"
    let fourthPartNewsTableViewCellReuseIdentifier = "fourthPartNewsTableViewCellReuseIdentifier"

    var cells: [FeedItem] = []

    var peopleViewPosts = [PeoplePostViewModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabelView()
        setupBarItem()
    }

    func setupTabelView() {
        setupTableAnchor()

        newsTabelView.dataSource = self
        newsTabelView.delegate = self

        newsTabelView.register(UINib(nibName: firstnibNameForCell, bundle: nil), forCellReuseIdentifier: firstPartNewsTableViewCellReuseIdentifier)
        newsTabelView.register(UINib(nibName: secondnibNameForCell, bundle: nil), forCellReuseIdentifier: secondPartNewsTableViewCellReuseIdentifier)
        newsTabelView.register(UINib(nibName: thirdnibNameForCell, bundle: nil), forCellReuseIdentifier: thirdPartNewsTableViewCellReuseIdentifier)
        newsTabelView.register(UINib(nibName: fourthnibNameForCell, bundle: nil), forCellReuseIdentifier: fourthPartNewsTableViewCellReuseIdentifier)

        newsTabelView.reloadData()

    }

    private func setupTableAnchor() {
        self.view.addSubview(newsTabelView)
        newsTabelView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        newsTabelView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        newsTabelView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        newsTabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    func setupBarItem() {
        navigationController?.tabBarItem.title = "News"
        navigationController?.tabBarItem.image = UIImage(systemName: "house")
        navigationItem.title = "News"
    }

}


extension NewsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 4
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Мои друзья"
        } else {
            func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
                return "News - \(section)"
            }
            return "News"
        }
    }



    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: thirdPartNewsTableViewCellReuseIdentifier, for: indexPath) as? ThirdPartNewsTableViewCell
            else { return UITableViewCell() }

            cell.setupCollectionView()

            return cell

        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: firstPartNewsTableViewCellReuseIdentifier, for: indexPath) as? FirstPartNewsTableViewCell else { return UITableViewCell() }

            return cell

            //            let cellModel = cells[indexPath.row]
            //
            //            switch cellModel {
            //            case .presenterInfo(let info):
            //                guard let cell = tableView.dequeueReusableCell(withIdentifier: firstPartNewsTableViewCellReuseIdentifier, for: indexPath) as? FirstPartNewsTableViewCell
            //                else { return UITableViewCell() }
            //
            //                //            cell.avatar = info.avatarImage
            //                //            cell.name.text = info.name
            //                //            cell.postDate.text = info.postDate
            //
            //                cell.configureFirstPart(nameLabel: info.name, dateLabel: info.postDate)
            //
            //
            //                return cell
            //
            //            case .hedder(let hadder):
            //                guard let cell = tableView.dequeueReusableCell(withIdentifier: secondPartNewsTableViewCellReuseIdentifier, for: indexPath) as? SecondPartNewsTableViewCell
            //                else { return UITableViewCell() }
            //
            //                //            cell.postNews.text = hadder.text
            //
            //                cell.configurePostNews(post: hadder.text)
            //
            //                return cell
            //
            //            case .photo:
            //                guard let cell = tableView.dequeueReusableCell(withIdentifier: thirdPartNewsTableViewCellReuseIdentifier, for: indexPath) as? ThirdPartNewsTableViewCell
            //                else { return UITableViewCell() }
            //
            //                cell.setupThirdPart()
            //
            //
            //                return cell
            //
            //            case .likesAndComments(let likesComments):
            //                guard let cell = tableView.dequeueReusableCell(withIdentifier: fourthPartNewsTableViewCellReuseIdentifier, for: indexPath) as? FourthPartNewsTableViewCell
            //                else { return UITableViewCell() }
            //                return cell
            //            }
        }
    }
}


extension NewsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 150
        } else {
            return 50
        }
    }
}
