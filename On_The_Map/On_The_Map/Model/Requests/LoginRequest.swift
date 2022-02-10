//
//  LoginRequest.swift
//  On_The_Map
//
//  Created by Jandrè Hattingh on 2022/02/01.
//

import Foundation

struct LoginRequest: Codable {
    let udacity : LoginDetails
}

struct LoginDetails: Codable {
    
    let username: String
    let password: String
    
    enum CodingKeys: String, CodingKey {
        case username
        case password
    }
}
