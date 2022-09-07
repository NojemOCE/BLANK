//
//  HomeView.swift
//  BLANK
//
//  Created by Nick Lam on 4/9/2022.
//

import SwiftUI

struct HomeView:  View {
    var bg_colour = UIColor(red: 0.05, green: 0.43, blue: 0.81, alpha: 1.0)
    
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
                            .foregroundColor(Color(red: 0.647, green: 0.643, blue: 0.631, opacity: 0.7))
                    })
                    .padding()
                }
                Spacer()
                    .frame(height: 180)
                
                Group {
                    Text("Let's ")
                        .fontWeight(.bold)
                    + Text("BLANK ")
                        .foregroundColor(Color(red: 0.647, green: 0.643, blue: 0.631, opacity: 0.7))
                        .fontWeight(.semibold)
                    + Text("it")
                        .fontWeight(.bold)
                }
                .font(.system(size: 38))

                Spacer()
                    .frame(height: 120)
                Text("Buttons go here")
                Spacer()
                    .frame(height: 350)
            }
            .padding()
            .background(Color(red: 0.902, green: 0.925, blue: 1, opacity: 0.8))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
