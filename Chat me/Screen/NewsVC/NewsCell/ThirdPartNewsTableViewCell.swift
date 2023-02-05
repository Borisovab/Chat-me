//
//  ThirdPartNewsTableViewCell.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import UIKit
import RealmSwift
import SwiftUI

class ThirdPartNewsTableViewCell: UITableViewCell {

    let photoGalleryCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())

    let gateWay = PeopleGateway(
        network: NetworkController(),
        dataBase: RealmStorage()
    )

    var peopleViewPosts = [PeoplePostViewModel]()

    let nibNameForCell = "PhotoCollectionViewCell"
    let photoCollectionViewCellReuseIdentifier = "photoCollectionViewCellReuseIdentifier"

    func setupCollectionView() {
        setupCollectionFlowLayout()

        photoGalleryCollectionView.dataSource = self
        photoGalleryCollectionView.delegate = self

        photoGalleryCollectionView.register(UINib(nibName: nibNameForCell, bundle: nil), forCellWithReuseIdentifier: photoCollectionViewCellReuseIdentifier)

        gateWay.loadPosts { [weak self] post in
            guard let self = self else { return }
            self.peopleViewPosts = post
            self.photoGalleryCollectionView.reloadData()
        }
    }

    func setupCollectionFlowLayout() {
        self.contentView.addSubview(photoGalleryCollectionView)
        if let flowLayout = self.photoGalleryCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
        }
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


extension ThirdPartNewsTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return peopleViewPosts.count
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: photoCollectionViewCellReuseIdentifier, for: indexPath) as? PhotoCollectionViewCell
        else { return UICollectionViewCell() }



        let avatarPeople = peopleViewPosts[indexPath.row].avatar
        let url = URL(string: avatarPeople)

        cell.photo.showImage(with: url)
        cell.layer.cornerRadius = cell.photo.bounds.width/2
        cell.layer.borderWidth = 2
        cell.layer.borderColor = #colorLiteral(red: 0.874512732, green: 0.9583994746, blue: 0.9569959044, alpha: 1)

        cell.setupPhotoAnchor()
        
        return cell
    }


}

extension ThirdPartNewsTableViewCell: UICollectionViewDelegate {

}

extension ThirdPartNewsTableViewCell: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let height = collectionView.bounds.height
        let whiteSpaces: CGFloat = 2
        let cellWidth = height / 1 - whiteSpaces

        return CGSize.init(width: cellWidth, height: cellWidth)
    }
}
