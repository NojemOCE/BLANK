//
//  HomeButton.swift
//  BLANK
//
//  Created by Nick Lam on 8/9/2022.
//

import SwiftUI

struct HomeButton: View {
    var buttonText = "My Button"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 135, height: 65)
            .foregroundColor(.gray)
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
