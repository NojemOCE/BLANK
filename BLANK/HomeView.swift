//
//  HomeView.swift
//  BLANK
//
//  Created by Nick Lam on 4/9/2022.
//

import SwiftUI

struct HomeView:  View {
    
    @State private var shouldShowKick: Bool = false
    @State private var shouldShowBook: Bool = false
    @State private var shouldShowBlock: Bool = false
    @State private var shouldShowTask: Bool = false
    
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
                    ZStack {
                        NavigationLink("",
                           destination: Text("Need to implement this kick view"),
                           isActive: $shouldShowKick)
                        Button(action: {
                            shouldShowKick.toggle()
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 135, height: 62)
                                    .foregroundColor(Color("MenuDefault"))
                                Text("Kick")
                                    .bold()
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.black)
                            }
                            
                        })

                    }

                    ZStack {
                        NavigationLink("",
                           destination: Text("Need to implement this book view"),
                           isActive: $shouldShowBook)
                        Button(action: {
                            shouldShowBook.toggle()
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 135, height: 62)
                                    .foregroundColor(Color("MenuDefault"))
                                Text("Book")
                                    .bold()
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.black)
                            }
                            
                        })

                    }
                }
                Spacer(minLength: 12)
                HStack (spacing: 16) {
                    ZStack {
                        NavigationLink("",
                           destination: Text("Need to implement this block view"),
                           isActive: $shouldShowBlock)
                        Button(action: {
                            shouldShowBlock.toggle()
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 135, height: 62)
                                    .foregroundColor(Color("MenuDefault"))
                                Text("Block")
                                    .bold()
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.black)
                            }
                            
                        })

                    }
                    
                    ZStack {
                        NavigationLink("",
                           destination: Text("Need to implement this task view"),
                           isActive: $shouldShowTask)
                        Button(action: {
                            shouldShowTask.toggle()
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 135, height: 62)
                                    .foregroundColor(Color("MenuDefault"))
                                Text("Task")
                                    .bold()
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.black)
                            }
                            
                        })

                    }
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
