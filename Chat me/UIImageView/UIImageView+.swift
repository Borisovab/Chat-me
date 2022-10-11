//
//  UIImageView+.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import Foundation
import UIKit

extension UIImageView {
    func showImage(with url: URL?) {
        guard let url = url else {
            return
        }

        URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
            guard let data = data else {
                return
            }

            let image = UIImage(data: data)
            DispatchQueue.main.async {
                self?.image = image
            }
        }.resume()
    }
}
