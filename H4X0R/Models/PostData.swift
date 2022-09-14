//
//  PostData.swift
//  H4X0R
//
//  Created by Chetan Dhowlaghar on 5/8/22.
//

import Foundation

struct Results: Codable{
    let hits: [Post]
}

struct Post: Codable, Identifiable{
    var id: String{
        return objectID
    }
    let title: String
    let url: String?
    let points: Int?
    let objectID: String
}
