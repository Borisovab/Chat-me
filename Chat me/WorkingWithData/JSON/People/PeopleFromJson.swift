//
//  PeopleFromJson.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import Foundation

struct PeopleFromJson: Decodable {
    
    let id: Int
    let avatar: String
    let trackCode: String
    let firstName: String
    let lastName: String
    let canAccessClosed: Bool?
    let isClosed: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id
        case avatar = "photo_100"
        case trackCode = "track_code"
        case firstName = "first_name"
        case lastName = "last_name"
        case canAccessClosed = "can_access_closed"
        case isClosed = "is_closed"
    }
}
