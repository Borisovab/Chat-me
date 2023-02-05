//
//  FeedItem.swift
//  Chat me
//
//  Created by Александр Борисов on 18.10.2022.
//

import Foundation

enum FeedItem {
    case presenterInfo(Info)
    case hedder(Hedder)
    case photo(Photo)
    case likesAndComments(LikeAndComment)
}
