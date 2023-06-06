//
//  User.swift
//  ProfileNavigation
//
//  Created by Eric on 05/06/2023.
//

import Foundation

struct User: Identifiable {
    var id: String
    var displayName: String
    var username: String
    var followers: [User] = [User]()
    var following: [User] = [User]()
    
    static var emptyUser = User(id: "", displayName: "", username: "")
    static var mockUser = User(id: "lebronjames@nba.com", displayName: "LeBron James", username: "@KingJames")
    static var allUsers = [
        User(id: "lebronjames@nba.com", displayName: "LeBron James", username: "@kingjames"),
        User(id: "anthonydavis@nba.com", displayName: "Anthony Davis", username: "@thebrow"),
        User(id: "austinreavers@nba.com", displayName: "Austin Reaves", username: "@ar15"),
        User(id: "dangelruseel@nba.com", displayName: "D'Angelo Russel", username: "@dlo")
    ]
}
