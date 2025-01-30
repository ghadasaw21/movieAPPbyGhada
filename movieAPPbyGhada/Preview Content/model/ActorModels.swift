//
//  ActorModels.swift
//  movieAPPbyGhada
//
//  Created by Ghada al ajmi on 30/07/1446 AH.
//

import Foundation

struct ActorResponse: Codable {
    let records: [ActorRecord]
}

struct ActorRecord: Codable {
    let id: String
    let fields: ActorFields
}

struct ActorFields: Codable {
    let name: String
    let age: Int?
    let movies: [String]? // Optional: IDs of movies the actor is linked to
}
