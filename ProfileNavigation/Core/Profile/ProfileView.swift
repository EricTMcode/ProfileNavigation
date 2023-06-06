//
//  ProfileView.swift
//  ProfileNavigation
//
//  Created by Eric on 05/06/2023.
//

import SwiftUI

struct ProfileView: View {
    @State var path = NavigationPath()
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                if vm.profileUIState == .loading {
                    ProgressView()
                } else {
                    VStack {
                        HeaderView(user: vm.currentUser)
                        
                        InfoView()
                        
                        FollowCountView(followers: vm.currentUser.followers, following: vm.currentUser.following)
                        
                        EditButton()
                        
                        PostListView()
                    }
                }
            }
            .task {
                vm.fetchProfile()
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
