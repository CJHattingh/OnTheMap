//
//  RequestSessionIDResponse.swift
//  On_The_Map
//
//  Created by Jandrè Hattingh on 2022/01/31.
//

import Foundation

struct RequestSessionIDResponse: Codable {
    let account: Account?
    let session: Session?
}

struct Account: Codable {
    let registered: Bool?
    let key: String?
    
    enum CodingKeys: String, CodingKey {
        case registered
        case key
    }
}

struct Session: Codable {
    let id: String?
    let expiration: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case expiration
    }
}
