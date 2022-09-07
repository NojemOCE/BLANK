//
//  HomeButton.swift
//  BLANK
//
//  Created by Nick Lam on 8/9/2022.
//

import SwiftUI

struct HomeButton: View {
    var buttonText = "My Button"
    var selected = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 135, height: 62)
                .foregroundColor(selected ? Color("MenuSelected") : Color("MenuDefault"))
            Text(buttonText)
                .bold()
                .font(.system(size: 25))
        }
    }
    
}

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton()
    }
}
