//
//  UserModels.swift
//  movieAPPbyGhada
//
//  Created by Ghada al ajmi on 30/07/1446 AH.
//

import Foundation

struct UserResponse: Codable {
    let records: [UserRecord]
}

struct UserRecord: Codable {
    let id: String
    let fields: UserFields
}

struct UserFields: Codable {
    let email: String
    let password: String
    let name: String
}
