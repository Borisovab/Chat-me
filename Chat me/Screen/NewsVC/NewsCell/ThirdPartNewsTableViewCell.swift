//
//  ThirdPartNewsTableViewCell.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import UIKit

class ThirdPartNewsTableViewCell: UITableViewCell {

    let photoGalleryCollectionView: UICollectionView = UICollectionView()

    let nibNameForCell = "PhotoCollectionViewCell"
    let photoCollectionViewCellReuseIdentifier = "photoCollectionViewCellReuseIdentifier"

    func setupThirdPart() {
        setupCollectionView()
    }

    private func setupCollectionView() {
        let width = self.contentView.bounds.width
        let height = self.contentView.bounds.height
        photoGalleryCollectionView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.contentView.addSubview(photoGalleryCollectionView)

        photoGalleryCollectionView.dataSource = self
        photoGalleryCollectionView.delegate = self

        photoGalleryCollectionView.register(UINib(nibName: nibNameForCell, bundle: nil), forCellWithReuseIdentifier: photoCollectionViewCellReuseIdentifier)
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
        return 10 
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: photoCollectionViewCellReuseIdentifier, for: indexPath) as? PhotoCollectionViewCell
        else { return UICollectionViewCell() }

        return cell
    }


}

extension ThirdPartNewsTableViewCell: UICollectionViewDelegate {

}

extension ThirdPartNewsTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let height = collectionView.bounds.height
        let whiteSpaces: CGFloat = 0
        let cellWidth = height / 1 - whiteSpaces

        return CGSize(width: cellWidth, height: cellWidth)
    }
}
