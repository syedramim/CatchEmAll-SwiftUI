//
//  Creature.swift
//  CatchEmAll
//
//  Created by Kaneis Zontanos on 3/12/23.
//

import Foundation

struct Creature: Codable, Identifiable {
    let id =  UUID().uuidString
    var name: String
    var url: String
    
    enum CodingKeys: CodingKey {
        case name
        case url
    }
}
