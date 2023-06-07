//
//  FollowingView.swift
//  ProfileNavigation
//
//  Created by Eric on 06/06/2023.
//

import SwiftUI

struct FollowingView: View {
    var following: [User]
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(following) { user in
                    NavigationLink(value: Route.otherProfile(user.id)) {
                        UserRow(user: user)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
        .navigationTitle("Following")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FollowingView_Previews: PreviewProvider {
    static var previews: some View {
        FollowingView(following: User.allUsers)
    }
}
