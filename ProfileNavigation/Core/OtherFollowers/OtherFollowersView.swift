//
//  OtherFollowersView.swift
//  ProfileNavigation
//
//  Created by Eric on 06/06/2023.
//

import SwiftUI

struct OtherFollowersView: View {
    var followers: [User]
    @Binding var path: NavigationPath
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(followers) { user in
                    if user.id == "lebronjames@nba.com" {
                        Button {
                            path = NavigationPath()
                        } label: {
                            UserRow(user: user)
                        }
                        .buttonStyle(PlainButtonStyle())
                    } else {
                        NavigationLink(value: Route.otherProfile(user.id)) {
                            UserRow(user: user)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
        .navigationTitle("Followers")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherFollowersView_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowersView(followers: User.allUsers, path: .constant(NavigationPath()))
    }
}
