//
//  OtherFollowCountView.swift
//  ProfileNavigation
//
//  Created by Eric on 06/06/2023.
//

import SwiftUI

struct OtherFollowCountView: View {
    var followers: [User]
    var following: [User]
    
    var body: some View {
        HStack {
            
            Spacer()
            
            NavigationLink(value: Route.otherFollowers){
                VStack {
                    Text("\(followers.count)")
                    Text("Followers")
                }
            }
            
            Spacer()
            
            NavigationLink(value: Route.otherFollowing) {
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

struct OtherFollowCountView_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowCountView(followers: User.allUsers, following: User.allUsers)
    }
}
