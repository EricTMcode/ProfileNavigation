//
//  ViewModel.swift
//  ProfileNavigation
//
//  Created by Eric on 06/06/2023.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var currentUser = User.emptyUser
    @Published var profileUIState: UIState = .loading
    
    @Published var otherUser = User.emptyUser
    @Published var otherProfileUIState: UIState = .loading
    var previousUserID = ""
    
    func fetchProfile() {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1, execute:  {
            self.currentUser = User.mockUser
            self.currentUser.followers = User.allUsers.filter {$0.id != "lebronjames@nba.com"}
            self.currentUser.following = User.allUsers.filter {$0.id != "lebronjames@nba.com"}
            self.profileUIState = .loaded
        })
    }
    
    func fetchOtherProfile(otherUserId: String) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1, execute: {
            self.otherUser = User.allUsers.first(where: {$0.id == otherUserId}) ?? User.emptyUser
            self.previousUserID = self.otherUser.id
            self.otherUser.followers = User.allUsers.filter {$0.id != otherUserId}
            self.otherUser.following = User.allUsers.filter {$0.id != otherUserId}
            self.otherProfileUIState = .loaded
        })
    }
    
    func resetOtherProfile(otherUserId: String) {
        if previousUserID != otherUserId {
            DispatchQueue.main.async(execute: {
                self.otherProfileUIState = .loading
            })
        }
    }
}
