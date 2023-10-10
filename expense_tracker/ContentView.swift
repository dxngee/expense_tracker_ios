//
//  ContentView.swift
//  expense_tracker
//
//  Created by Danil Denisov on 10.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HomeView()
        }
        .navigationViewStyle(.stack)
    }
}

struct Content_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
