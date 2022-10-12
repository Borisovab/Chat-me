//
//  GroupsRealm.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import Foundation
import RealmSwift

class GroupsRealm: Object {
    @Persisted(primaryKey: true)
//    @Persisted
    var id: Int

    @Persisted
    var descriptionGroup: String?

    @Persisted
    var name: String

    @Persisted
    var photo100: String?
}

extension GroupsRealm {
    func fillData(with model: GroupsFromJson) {
        id = model.id
        descriptionGroup = model.descriptionGroup
        name = model.name
        photo100 = model.photo100
    }
}
