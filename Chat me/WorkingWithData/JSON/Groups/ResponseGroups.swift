//
//  ResponseGroups.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import Foundation

struct ResponseGroups: Decodable {
    let count: Int
    let items: [GroupsFromJson]
}
