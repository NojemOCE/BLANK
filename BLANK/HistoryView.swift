//
//  HistoryView.swift
//  BLANK
//
//  Created by Nick Lam on 5/9/2022.
//

import SwiftUI

struct HistoryView:  View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BGColour").edgesIgnoringSafeArea(.all)
                Text("This is where past BLANKs go")
            }
            .navigationTitle("History")
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
