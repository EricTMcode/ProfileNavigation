//
//  ProfileView.swift
//  ProfileNavigation
//
//  Created by Eric on 05/06/2023.
//

import SwiftUI

struct ProfileView: View {
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                HeaderView(user: User.mockUser)
                
                InfoView()
                
                FollowCountView(followers: User.allUsers, following: User.allUsers)
                
                EditButton()
                
                PostListView()
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .followers:
                    FollowersView(followers: User.allUsers)
                case .following:
                    FollowingView(following: User.allUsers)
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
