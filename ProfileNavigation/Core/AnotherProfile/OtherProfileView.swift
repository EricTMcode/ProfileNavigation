//
//  OtherProfileView.swift
//  ProfileNavigation
//
//  Created by Eric on 06/06/2023.
//

import SwiftUI

struct OtherProfileView: View {
    @ObservedObject var vm: ViewModel
    var otherUserId: String
    
    var body: some View {
        VStack {
            if vm.otherProfileUIState == .loading {
                ProgressView()
            } else {
                VStack {
                    HeaderView(user: vm.otherUser)
                    
                    InfoView()
                    
                    FollowCountView(followers: vm.otherUser.followers, following: vm.otherUser.following)
                    
                    EditButton()
                    
                    PostListView()
                }
            }
        }
        .task {
            vm.fetchOtherProfile(otherUserId: otherUserId)
        }
        .navigationTitle(vm.otherUser.username)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherProfileView_Previews: PreviewProvider {
    static var previews: some View {
        OtherProfileView(vm: ViewModel(), otherUserId: "")
    }
}
