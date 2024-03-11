//
//  File.swift
//  TechNews
//
//  Created by Srijnasri Negi on 28/12/23.
//

import Foundation

struct Post: Decodable, Identifiable {
    var id: String {
        objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
