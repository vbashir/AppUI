//
//  FirstScreen.swift
//  AppUI
//
//  Created by Башир Валиев on 30.08.2021.
//

import SwiftUI

struct FirstScreen: View {
    @Binding var tab: Tab
    @Binding var selectLink: Bool
    var body: some View {
        Button("Открыть первый пункт из списка", action: {
            self.tab = .secondTab
            self.selectLink = true
        })
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(tab: .constant(Tab.firstTab), selectLink: .constant(false))
    }
}
