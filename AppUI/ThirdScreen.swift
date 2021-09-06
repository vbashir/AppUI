//
//  ThirdScreen.swift
//  AppUI
//
//  Created by Башир Валиев on 30.08.2021.
//

import SwiftUI

struct ThirdScreen: View {
    @State private var showSheet: Bool = false
    @State var isLoading: Bool = true
    var body: some View {
        VStack {
            ActivityIndicator(isAnimating: $isLoading)
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Открыть модальное окно")
            }).sheet(isPresented: $showSheet, content: {
                Text("Модальное окно")
            }).padding().border(Color.black, width: 1)
        }
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
