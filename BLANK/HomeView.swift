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
                            .frame(width: 30, height: 30, alignment: .center)
                            .foregroundColor(Color("SecondaryGrey"))
                    })
                    .padding()
                }
                Spacer()
                    .frame(height: 175)
                
                Group {
                    Text("Let's ")
                        .fontWeight(.bold)
                    + Text("BLANK ")
                        .foregroundColor(Color("SecondaryGrey"))
                        .fontWeight(.semibold)
                    + Text("it")
                        .fontWeight(.bold)
                }
                .font(.system(size: 38))

                Spacer()
                    .frame(height: 100)
                HStack (spacing: 16) {
                    HomeButton(buttonText: "Kick")
                    HomeButton(buttonText: "Book")
                }
                Spacer(minLength: 12)
                HStack (spacing: 16) {
                    HomeButton(buttonText: "Block")
                    HomeButton(buttonText: "Task")
                }
                Spacer()
                    .frame(height: 300)
            }
            .padding()
            .background(Color("BGColour"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
