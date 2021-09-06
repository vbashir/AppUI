//
//  ContentView.swift
//  AppUI
//
//  Created by Башир Валиев on 30.08.2021.
//

import SwiftUI

enum Tab {
    case firstTab
    case secondTab
    case thirdTab
}

struct ContentView: View {
    @State var selection: Tab = .firstTab
    @State var selectLink: Bool = false
    var body: some View {
        TabView(selection: $selection) {
            FirstScreen(tab: $selection, selectLink: $selectLink).tabItem {
                Image(systemName: "house")
                Text("Первый экран")
            }.tag(Tab.firstTab)
            SecondScreen(selectLink: $selectLink).tabItem {
                Image(systemName: "person")
                Text("Второй экран")
            }.tag(Tab.secondTab)
            ThirdScreen().tabItem {
                Image(systemName: "gear")
                Text("Третий экран")
            }.tag(Tab.thirdTab)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
