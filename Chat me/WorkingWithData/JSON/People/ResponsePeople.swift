//
//  ResponsePeople.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import Foundation

struct ResponsePeople: Decodable {
    let count: Int
    let items: [PeopleFromJson]
    
}
