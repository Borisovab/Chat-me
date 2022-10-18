//
//  NewsViewController.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import UIKit

class NewsViewController: UIViewController {

    let newsTabelView: UITableView = UITableView()

    let nibNameForCell = "FirstPartNewsTableViewCell"
    let firstPartNewsTableViewCellReuseIdentifier = "firstPartNewsTableViewCellReuseIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabelView()
        setupBarItem()
    }

    func setupTabelView() {
        let width = self.view.bounds.width
        let height = self.view.bounds.height
        newsTabelView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.view.addSubview(newsTabelView)

        newsTabelView.dataSource = self
        newsTabelView.delegate = self

        newsTabelView.register(UINib(nibName: nibNameForCell, bundle: nil), forCellReuseIdentifier: firstPartNewsTableViewCellReuseIdentifier)
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
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: firstPartNewsTableViewCellReuseIdentifier, for: indexPath) as? FirstPartNewsTableViewCell
            else { return UITableViewCell() }

            return cell

        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: firstPartNewsTableViewCellReuseIdentifier, for: indexPath) as? FirstPartNewsTableViewCell
            else { return UITableViewCell() }

            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: firstPartNewsTableViewCellReuseIdentifier, for: indexPath) as? FirstPartNewsTableViewCell
            else { return UITableViewCell() }

            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: firstPartNewsTableViewCellReuseIdentifier, for: indexPath) as? FirstPartNewsTableViewCell
            else { return UITableViewCell() }

            return cell
        default: return UITableViewCell()





        }





    }


}

extension NewsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
