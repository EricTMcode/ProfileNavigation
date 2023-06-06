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
    
    func fetchProfile() {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1, execute:  {
            self.currentUser = User.mockUser
            self.currentUser.followers = User.allUsers.filter {$0.id != "lebronjames@nba.com"}
            self.currentUser.following = User.allUsers.filter {$0.id != "lebronjames@nba.com"}
            self.profileUIState = .loaded
        })
    }
    
}
