//
//  SecondPartNewsTableViewCell.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import UIKit

class SecondPartNewsTableViewCell: UITableViewCell {

    var postNews: UILabel = {
        let label = UILabel()
        label.textColor = .brown
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func configurePostNews(post: String?) {
        postNews.text = post

        setupPostNews()
    }

    private func setupPostNews() {
        contentView.addSubview(postNews)
        postNews.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50).isActive = true
        postNews.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50).isActive = true
        postNews.heightAnchor.constraint(equalToConstant: 50).isActive = true
        postNews.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
