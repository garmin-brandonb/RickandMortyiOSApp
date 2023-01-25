//
//  RMLocation.swift
//  RickandMorty
//
//  Created by Jack B on 1/22/23.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
