//
//  FriendView.swift
//  BLANK
//
//  Created by Nick Lam on 5/9/2022.
//

import SwiftUI

struct FriendView:  View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BGColour").edgesIgnoringSafeArea(.all)
                Text("These are where all your friends are listed")
            }
            .navigationTitle("Friends")
        }
    }
}
