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
    
    func configurePeopleAndGroupsCell(nameLabel: String?, description: String?) {

        name.text = nameLabel
        descript.text = description

        setupAvatar()
        setupName()
        setupDescription()
        //        self.avatar.contentMode = .scaleAspectFit
        //        self.avatar.clipsToBounds = true
        //        self.avatar.layer.cornerRadius = (self.avatar.frame.size.height) / 2

    }
    
    func setupAvatar() {
        contentView.addSubview(avatar)
        avatar.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        avatar.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        avatar.heightAnchor.constraint(equalToConstant: 50).isActive = true
        avatar.widthAnchor.constraint(equalTo: avatar.heightAnchor).isActive = true
    }
    
    func setupName() {
        contentView.addSubview(name)
        name.leftAnchor.constraint(equalTo: avatar.rightAnchor, constant: 75).isActive = true
        name.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        name.heightAnchor.constraint(equalToConstant: 50).isActive = true
        name.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -20).isActive = true
    }
    
    func setupDescription() {
        contentView.addSubview(descript)
        descript.leftAnchor.constraint(equalTo: avatar.rightAnchor, constant: 75).isActive = true
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
