//
//  PhotoCollectionViewCell.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {

    let photo: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    func setupPhotoAnchor() {
        contentView.addSubview(photo)
        photo.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        photo.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        photo.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        photo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }

    func setupPhoto(image: UIImage?) {
        photo.image = image
        setupPhotoAnchor()
    }



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
