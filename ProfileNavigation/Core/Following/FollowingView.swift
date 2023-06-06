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
                    UserRow(user: user)
                }
            }
        }
    }
}

struct FollowingView_Previews: PreviewProvider {
    static var previews: some View {
        FollowingView(following: User.allUsers)
    }
}
