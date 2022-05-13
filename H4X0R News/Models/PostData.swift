//
//  PostData.swift
//  H4X0R News
//
//  Created by Miguel Quezada on 11-05-22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}
struct Post: Decodable, Identifiable {
    var id:String{return objectID}
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
