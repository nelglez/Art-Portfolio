//
//  User.swift
//  Art-Portfolio
//
//  Created by Nelson Gonzalez on 2/2/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

struct User: Equatable, Codable {
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.uid == rhs.uid
    }
    
    var uid: String
    var email: String
    var password: String
    var userName: String
    let posts: Post
    
//    init(uid: String = UUID().uuidString, email: String, password: String, userName: String, posts: Post) {
//        self.uid = uid
//        self.email = email
//        self.password = password
//        self.userName = userName
//    }
    
    enum CodingKeys: String, CodingKey {
        case uid, email, password, posts
        case userName = "username"
    }
    
}

struct Post: Codable {
    let postId: String
    let postDescription: String
    let imageUrl: String
    let date: String
    let likes: Int
    
    
    enum CodingKeys: String, CodingKey {
        case date, likes
        case postId = "postid"
        case postDescription = "description"
        case imageUrl = "image_url"
    }
}
