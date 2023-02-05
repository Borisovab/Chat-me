//
//  PeopleVC+Realm.swift
//  Chat me
//
//  Created by Александр Борисов on 12.10.2022.
//

import Foundation
import RealmSwift
import SwiftUI

extension PeopleViewController {

//    func makePeopleObserver(realm: Realm) {
//        let objs = realm.objects(PeopleRealm.self)
//
//        realmNotification = objs.observe({ changes in
//            switch changes {
//            case let .initial(objs):
//                DispatchQueue.main.async { [self] in
//                    self.peopleFromRealm = Array(objs)
//                    self.peopleTableView.reloadData()
//                }
//            case .error(let error): print(error)
//            case let .update(friends, deletions, insertions, modifications):
//
//                DispatchQueue.main.async { [self] in
//                    self.peopleFromRealm = Array(friends)
//
//                    peopleTableView.reloadData()
//                }
//            }
//        })
//    }
}
