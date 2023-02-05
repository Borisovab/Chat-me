//
//  PeopleGateway.swift
//  Chat me
//
//  Created by Александр Борисов on 11.10.2022.
//

import Foundation
import RealmSwift

class PeopleGateway {
    init(
        network: NetworkController,
        dataBase: RealmStorage
    ) {
        self.network = network
        self.dataBase = dataBase
    }
    
    let network: NetworkerProtocol
    let dataBase: RealmStorageProtocol
    
    func loadPosts(completion: @escaping([PeoplePostViewModel]) -> Void) {
        var components = URLComponents(string: "https://api.vk.com/method/friends.get")
        components?.queryItems = [
            URLQueryItem(name: "access_token", value: Session.sharedInstance.token),
            URLQueryItem(name: "fields", value: "nickname"),
            URLQueryItem(name: "fields", value: "photo_100"),
            URLQueryItem(name: "v", value: "5.131")
        ]
        
        guard
            let url = components?.url
        else {
            completion([])
            return
        }
        
//        let request = URLRequest(url: url)
        network.load(request: url) { [weak self] (model: JSONInfo<ResponsePeople>?) in
            
            if let model = model {
                DispatchQueue.main.async {
                    model.response.items
                        .map { netPost in
                            let post = PeopleRealm()
                            post.fillData(with: netPost)
                            return post
                        }
                        .forEach { self?.dataBase.save(model: $0) }
                    
                    let viewData = model.response.items
                        .map { PeoplePostViewModel(from: $0) }
                    
                    completion(viewData)
                    print("from JSON\(viewData.count)")
                }
            } else {
                DispatchQueue.main.async {
                    let values: [PeopleRealm]? = self?.dataBase.restore()
                    let viewData = (values ?? [])
                        .map { PeoplePostViewModel(from: $0) }
                    
                    completion(viewData)
                    print("from REALM\(viewData.count)")
                }
            }
        }
    }
}
