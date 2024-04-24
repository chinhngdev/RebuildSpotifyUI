//
//  User.swift
//  RebuildSpotifyUI
//
//  Created by Chinh on 4/18/24.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

// MARK: - User
struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let birthDate: String
    let image: String
    let height: Int
    let weight: Double
}

extension User {
    static var mock: User {
        return .init(
            id: 444,
            firstName: "Chinh",
            lastName: "Ng",
            age: 70,
            email: "emai@apple.com",
            phone: "",
            username: "",
            password: "",
            birthDate: "",
            image: Constants.randomImage,
            height: 180,
            weight: 200
        )
    }
}
