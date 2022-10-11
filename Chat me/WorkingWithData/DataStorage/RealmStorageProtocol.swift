//
//  RealmStorageProtocol.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import Foundation
import SwiftUI
import RealmSwift

protocol RealmStorageProtocol {
    func save<Model: Object>(model: Model)
    
    func restore<Model: Object>() -> [Model]
}
