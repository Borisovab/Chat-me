//
//  Session.swift
//  Chat me
//
//  Created by Александр Борисов on 05.10.2022.
//

import Foundation

class Session {
    static let sharedInstance = Session()
    private init() {}

    var token = ""
}
