//
//  NetworkerProtocol.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import Foundation

protocol NetworkerProtocol {
    func load<Model: Decodable> (
        request: URL,
        completion: @escaping (Model?) -> Void
    )
}
