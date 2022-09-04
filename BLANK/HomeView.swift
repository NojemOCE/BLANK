//
//  HomeView.swift
//  BLANK
//
//  Created by Nick Lam on 4/9/2022.
//

import SwiftUI

struct HomeView:  View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        // Display profile
                    }, label: {
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 30, height:30, alignment: .center)
                            .foregroundColor(Color(.secondaryLabel))
                    })
                    .padding()
                }
                Spacer()
                    .frame(height: 180)
                Text("Let's BLANK it")
                Spacer()
                    .frame(height: 120)
                Text("Buttons go here")
                Spacer()
                    .frame(height: 350)
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
