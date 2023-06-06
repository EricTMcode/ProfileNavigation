//
//  Route.swift
//  ProfileNavigation
//
//  Created by Eric on 06/06/2023.
//

import Foundation

enum Route: Hashable {
    case followers
    case following
    case otherProfile(String)
}
