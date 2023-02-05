//
//  FirstPartNewsTableViewCell.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import UIKit

class FirstPartNewsTableViewCell: UITableViewCell {

    var avatar: UIImageView = {
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

    let postDate: UILabel = {
        let label = UILabel()
        label.textColor = .brown
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func configureFirstPart(nameLabel: String?, dateLabel: String?) {
        name.text = nameLabel
        postDate.text = dateLabel

        setupAvatar()
        setupName()
        setupPostDate()
    }

    private func setupAvatar() {
        contentView.addSubview(avatar)
        avatar.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        avatar.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        avatar.heightAnchor.constraint(equalToConstant: 50).isActive = true
        avatar.widthAnchor.constraint(equalTo: avatar.heightAnchor).isActive = true
    }

    private func setupName() {
        contentView.addSubview(name)
        name.leftAnchor.constraint(equalTo: avatar.rightAnchor, constant: 75).isActive = true
        name.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        name.heightAnchor.constraint(equalToConstant: 50).isActive = true
        name.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -20).isActive = true
    }

    private func setupPostDate() {
        contentView.addSubview(postDate)
        postDate.leftAnchor.constraint(equalTo: avatar.rightAnchor, constant: 75).isActive = true
        postDate.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        postDate.heightAnchor.constraint(equalToConstant: 50).isActive = true
        postDate.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 20).isActive = true
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
