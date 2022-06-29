//
//  SecondTab.swift
//  HW_SwUI_Navigation
//
//  Created by Анастасия Шалухо on 26.06.22.
//

import SwiftUI

struct SecondTabView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                SecondTabView_2()
            } label: {
                Text("Посмотреть состав группы")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
            }
            .navigationTitle("Состав группы")
        }
    }
}


struct SecondTab_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
