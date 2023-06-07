//
//  OtherFollowingView.swift
//  ProfileNavigation
//
//  Created by Eric on 06/06/2023.
//

import SwiftUI

struct OtherFollowingView: View {
    var following: [User]
    @Binding var path: NavigationPath
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(following) { user in
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
        .navigationTitle("Following")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherFollowingView_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowingView(following: User.allUsers, path: .constant(NavigationPath()))
    }
}
