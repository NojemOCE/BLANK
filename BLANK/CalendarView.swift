//
//  CalendarView.swift
//  BLANK
//
//  Created by Nick Lam on 5/9/2022.
//

import SwiftUI

struct CalendarView:  View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BGColour").edgesIgnoringSafeArea(.all)
                Text("This is where the calendar goes")
            }
            .navigationTitle("Calendar")
        }
    }
}
