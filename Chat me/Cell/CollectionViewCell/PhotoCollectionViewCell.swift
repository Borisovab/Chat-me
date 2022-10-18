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


    func setupPhoto(image: UIImage?) {
        photo.image = image
    }



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
