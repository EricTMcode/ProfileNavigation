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
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
