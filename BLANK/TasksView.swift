//
//  ToDoView.swift
//  BLANK
//
//  Created by Nick Lam on 5/9/2022.
//

import SwiftUI

struct TasksView:  View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BGColour").edgesIgnoringSafeArea(.all)
                Text("This is where the tasks go")
            }
            .navigationTitle("Tasks")
        }
    }
}
