//
//  ErrorResponse.swift
//  On_The_Map
//
//  Created by Jandrè Hattingh on 2022/02/10.
//

import Foundation

struct ErrorResponse: Codable, Error {
    let status: Int
    let message: String
    
    enum CodingKeys: String, CodingKey {
            case status
            case message = "error"
        }
}

extension ErrorResponse: LocalizedError {
    var errorDescription: String? {
        return message
    }
}
