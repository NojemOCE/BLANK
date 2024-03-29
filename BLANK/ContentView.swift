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
        VStack() {
            ZStack {
                switch selectedIndex {
                case 1:
                    HistoryView()
                case 2:
                    CalendarView()
                case 3:
                    FriendView()
                case 4:
                    TasksView()
                default:
                    HomeView()
                }
            }
            
            HStack {
                ForEach(0..<icons.count, id: \.self) { number in
                    Spacer()
                    Button(action: {
                        self.selectedIndex = number
                    }, label: {
                        Image(systemName: icons[number])
                            .font(.system(size: 25))
                            .foregroundColor(selectedIndex == number ? Color(.label) : Color(UIColor.lightGray))
                            .frame(width: 30, height: 30)
                    })
                    Spacer()
                }
            }
            .padding(.top, 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
