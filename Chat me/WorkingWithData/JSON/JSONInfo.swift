//
//  InfoJson.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import Foundation

struct JSONInfo<Response: Decodable>: Decodable {
    let response: Response
}



