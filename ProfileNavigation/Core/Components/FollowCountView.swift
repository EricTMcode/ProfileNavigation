//
//  FollowCountView.swift
//  ProfileNavigation
//
//  Created by Eric on 05/06/2023.
//

import SwiftUI

struct FollowCountView: View {
    var followers: [User]
    var following: [User]
    
    var body: some View {
        HStack {
            
            Spacer()
            
            NavigationLink(value: Route.followers){
                VStack {
                    Text("\(followers.count)")
                    Text("Followers")
                }
            }
            
            Spacer()
            
            NavigationLink(value: Route.following) {
                VStack {
                    Text("\(following.count)")
                    Text("Following")
                }
            }
            
            Spacer()
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct FollowCountView_Previews: PreviewProvider {
    static var previews: some View {
        FollowCountView(followers: User.allUsers, following: User.allUsers)
    }
}
