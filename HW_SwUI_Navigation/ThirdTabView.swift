//
//  ThirdTab.swift
//  HW_SwUI_Navigation
//
//  Created by Анастасия Шалухо on 26.06.22.
//

import SwiftUI

struct ThirdTabView: View {
    
    @State private var activateModalView = false
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.3).ignoresSafeArea()
        NavigationView {
            Button(action: {
                activateModalView.toggle()
            }, label: {
                Text("Ознакомиться с исполниетлем")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
            })
                .navigationTitle("Общие сведения")
                .sheet(isPresented: $activateModalView) {
                    NavigationView {
                        Regulations()
                    }
                }
        }
        //        .background(.orange.opacity(0.2))
        // никак не выходит закрасить фон вью :( 
        }
        
    }
}

struct Regulations: View {
    var body: some View {
        ScrollView {
            Text ("Об исполнителе")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            Spacer()
            Text("""
Прогрессив-метал-группа из США. Основана в 1985 году тремя студентами музыкального колледжа Беркли. Dream Theater являются одними из основателей и наиболее известных представителей жанра «прогрессивный метал». Для музыки группы характерны необычная структура композиций, сложные инструментальные партии и высокое исполнительское мастерство музыкантов.
""")
                .foregroundColor(Color(hue: 0.111, saturation: 0.262, brightness: 0.255))
                .multilineTextAlignment(.center)
                .padding(.top)
        }
        .background(Color.orange.opacity(0.2))
    }
}

struct ThirdTab_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabView()
    }
}
