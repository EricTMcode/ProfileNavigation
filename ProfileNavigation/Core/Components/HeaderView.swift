//
//  HeaderView.swift
//  ProfileNavigation
//
//  Created by Eric on 05/06/2023.
//

import SwiftUI

struct HeaderView: View {
    var user: User
    var body: some View {
        HStack {
            Image(systemName: "person")
                .foregroundColor(.purple)
                .frame(width: 80, height: 80)
                .font(.system(size: 35))
                .overlay(RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.purple, lineWidth: 2))
            
            VStack {
                Text("\(user.displayName)")
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(user: User.mockUser)
    }
}
