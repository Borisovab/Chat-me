//
//  PeoplePostViewModel.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import Foundation

struct PeoplePostViewModel {
    let avatar: String
    let firstName: String
    let lastName: String
}

extension PeoplePostViewModel {
    init(from netData: PeopleFromJson) {
        avatar = netData.avatar
        firstName = netData.firstName
        lastName = netData.lastName
    }

    init(from dataBase: PeopleRealm) {
        avatar = dataBase.avatar
        firstName = dataBase.firstName
        lastName = dataBase.lastName
    }
}
