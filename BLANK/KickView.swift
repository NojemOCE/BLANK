//
//  KickView.swift
//  BLANK
//
//  Created by Nick Lam on 12/9/2022.
//

import SwiftUI

struct KickView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var name: String = "Task Name"
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Lets Kick It")
                        .bold()
                        .font(.largeTitle)
                        .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                        print("Button pressed")
                    }, label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                            .foregroundColor(Color("SecondaryGrey"))
                            .padding(.trailing, 5)
                    })
                    .padding()
                }
                
                Divider()
                HStack {
                    Text("What are you doing?")
                        .padding(.leading)
                        .padding(.bottom, 1)
                    Spacer()
                }
                
                HStack {
                    ZStack {
                        Text("Movie night")
                            .bold()
                            .font(.system(size: 28))
                            .foregroundColor(Color("SecondaryGrey"))
                            .padding(.leading)
                            .padding(.bottom)
                    }
                    Spacer()
                }
                
                HStack {
                    Text("Who with?")
                        .padding(.leading)
                        .padding(.bottom, 1)
                    Spacer()
                }
                
                HStack {
                    ZStack {
                        Text("@username")
                            .bold()
                            .font(.system(size: 28))
                            .foregroundColor(Color("SecondaryGrey"))
                            .padding(.leading)
                            .padding(.bottom)
                    }
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 600)
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct KickView_Previews: PreviewProvider {
    static var previews: some View {
        KickView()
    }
}
