//
//  CellForPeopleAndGroups.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import UIKit

class CellForPeopleAndGroups: UITableViewCell {

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


    override func prepareForReuse() {
        super.prepareForReuse()
        avatar.image = nil
        name.text = nil
        descript.text = nil
    }

    func configurePeopleAndGroupsCell(avatarImage: UIImage?, nameLabel: String?, description: String?) {
        avatar.image = avatarImage
        name.text = nameLabel
        descript.text = description

        setupScreenElements()
    }

    func setupScreenElements() {
        setupAvatar()
        setupName()
        setupDescription()
    }

    func setupAvatar() {
        contentView.addSubview(avatar)
        avatar.layer.cornerRadius = self.bounds.height / 4
        avatar.tintColor = .systemRed
        avatar.backgroundColor = .gray
        avatar.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        avatar.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        avatar.heightAnchor.constraint(equalToConstant: 50).isActive = true
        avatar.widthAnchor.constraint(equalTo: avatar.heightAnchor).isActive = true
    }

    func setupName() {
        contentView.addSubview(name)
        name.leftAnchor.constraint(equalTo: avatar.rightAnchor, constant: 25).isActive = true
        name.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        name.heightAnchor.constraint(equalToConstant: 50).isActive = true
        name.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -20).isActive = true
    }

    func setupDescription() {
        contentView.addSubview(descript)
        descript.leftAnchor.constraint(equalTo: avatar.rightAnchor, constant: 25).isActive = true
        descript.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        descript.heightAnchor.constraint(equalToConstant: 50).isActive = true
        descript.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 20).isActive = true
    }


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
