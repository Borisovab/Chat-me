//
//  GroupsVC+Realm.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import Foundation
import RealmSwift
import SwiftUI

extension GroupsViewController {
//    func makeGroupsObserver(realm: Realm) {
//        let objs = realm.objects(GroupsRealm.self)
//
//        realmNotification = objs.observe({ changes in
//            switch changes {
//            case let .initial(objs):
//                self.groupsFromRealm = Array(objs)
//                self.groupsTableView.reloadData()
//            case .error(let error): print(error)
//            case let .update(groups, deletions, insertions, modifications):
//
//                DispatchQueue.main.async { [self] in
//                    self.groupsFromRealm = Array(groups)
//
//                    groupsTableView.reloadData()
//                }
//            }
//        })
//    }
}
