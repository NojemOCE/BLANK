//
//  ContentView.swift
//  BLANK
//
//  Created by Nick Lam on 4/9/2022.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    
    let icons = [
        "house",
        "arrow.left.arrow.right",
        "calendar",
        "person.3",
        "checklist"
    ]
    
    var body: some View {
        VStack {
            ZStack {
                switch selectedIndex {
                case 0:
                    NavigationView {
                        VStack {
                            Text("First Screen")
                        }
                        .navigationTitle("First Screen")
                    }
                default:
                    NavigationView {
                        VStack {
                            Text("Other")
                        }
                        .navigationTitle("Other Screen")
                    }
                }
            }
            
            Divider().frame(height: 40)
            HStack {
                ForEach(0..<5, id: \.self) { number in
                    Spacer()
                    Button(action: {
                        self.selectedIndex = number
                    }, label: {
                        Image(systemName: icons[number])
                            .font(.system(size: 25,
                                          weight: .regular,
                                          design: .default))
                            .foregroundColor(selectedIndex == number ? .black : Color(UIColor.lightGray))
                            .frame(width: 30, height: 40)
                    })
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
