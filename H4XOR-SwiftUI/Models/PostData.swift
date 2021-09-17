//
//  PostData.swift
//  H4XOR-SwiftUI
//
//  Created by Данил Фролов on 07.09.2021.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
