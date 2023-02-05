//
//  GroupsFromJson.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import Foundation

struct GroupsFromJson: Decodable {

    let id: Int
    let descriptionGroup: String?
    let name: String
    let photo100: String?

    enum CodingKeys: String, CodingKey {
        case id
        case descriptionGroup = "description"
        case name
        case photo100 = "photo_100"
    }

}
