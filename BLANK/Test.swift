//
//  Test.swift
//  BLANK
//
//  Created by Ethan Kwong on 22/1/2023.
//

import Foundation
import SwiftUI

struct TestView: View {
    @StateObject var oo = SearchObservableObject()
    @State private var searchTerm = ""
    var body: some View {
        NavigationView {
            VStack{
            }
        }.searchable(text: $searchTerm) {
            ForEach(oo.searchResults) { person in
                PersonRowView(person: person)
            }
        }
        .onChange(of: searchTerm) {searchTerm in
            oo.searchResults = oo.data.filter({person in person.name.contains(searchTerm)})
        }
    }
}


struct TestView_Previews: PreviewProvider{
    static var previews: some View {
        TestView()
    }
}

