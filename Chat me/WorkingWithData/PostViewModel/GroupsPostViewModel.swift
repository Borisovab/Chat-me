//
//  GroupsPostViewModel.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import Foundation

struct GroupsPostViewModel {
    let avatar: String
    let name: String
}

extension GroupsPostViewModel {
    init(from netData: GroupsFromJson) {
        avatar = netData.photo100 ?? ""
        name = netData.name
    }

    init(from dataBase: GroupsRealm) {
        avatar = dataBase.photo100 ?? ""
        name = dataBase.name
    }
}
