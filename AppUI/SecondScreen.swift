//
//  SecondScreen.swift
//  AppUI
//
//  Created by Башир Валиев on 30.08.2021.
//

import SwiftUI

struct SecondScreen: View {
    @Binding var selectLink: Bool
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: Text("Первый пункт"),
                    label: {
                        Text("Первый пункт")
                    })
                NavigationLink("Второй пункт", destination: Text("Второй пункт"), isActive: $selectLink)
                NavigationLink(
                    destination: Text("Третий пункт"),
                    label: {
                        Text("Третий пункт")
                    })
            }.navigationBarTitle("Список пунктов")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(selectLink: .constant(false))
    }
}
