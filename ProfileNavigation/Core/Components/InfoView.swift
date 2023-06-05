//
//  InfoView.swift
//  ProfileNavigation
//
//  Created by Eric on 05/06/2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Label("Last played", systemImage: "clock")
                    .foregroundColor(.gray)
                
                Label("Crypto.com Arena", systemImage: "map")
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
