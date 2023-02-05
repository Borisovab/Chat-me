//
//  PeopleRealm.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import Foundation
import RealmSwift

class PeopleRealm: Object {
    @Persisted(primaryKey: true)
    //    @Persisted
    var id: Int
    
    @Persisted
    var avatar: String
    
    @Persisted
    var trackCode: String
    
    @Persisted
    var firstName: String
    
    @Persisted
    var lastName: String
    
    @Persisted
    var canAccessClosed: Bool?
    
    @Persisted
    var isClosed: Bool?
}


extension PeopleRealm {
    func fillData(with model: PeopleFromJson) {
        id = model.id
        avatar = model.avatar
        trackCode = model.trackCode
        firstName = model.firstName
        lastName = model.lastName
        canAccessClosed = model.canAccessClosed
        isClosed = model.isClosed
    }
}
