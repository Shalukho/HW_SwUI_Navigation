//
//  SecondTabView_2.swift
//  HW_SwUI_Navigation
//
//  Created by Анастасия Шалухо on 27.06.22.
//

import SwiftUI


//struct View1_1: View {
//    var body: some View {
//        NavigationLink {
//            View1_2()
//        } label: {
//            Text("Переход на View1_2")
//        }
//        .navigationTitle("View1_1")
//    }
//}


struct SecondTabView_2: View {
    var body: some View {
        NavigationView {
            ZStack { Color.orange.opacity(0.2).ignoresSafeArea()
                VStack(spacing: 20) {
                    Text("Текущий состав")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    Text("""
        
         Джон Петруччи — гитара, бэк-вокал (1985 - наши дни)
        
         Джон Маянг — бас-гитара, стик (1985 - наши дни)
        
         Джеймс Лабри — вокал, перкуссия (1991 - наши дни)
        
         Джордан Рудесс — клавишные, синтезатор, континуум, стил-гитара, iPad и iPhone с музыкальным ПО (1999 - наши дни)
        
         Майк Манджини — ударные (2010 - наши дни)
        """)
                        .foregroundColor(Color(hue: 0.111, saturation: 0.262, brightness: 0.255))
                        .padding([.top, .leading, .trailing])
                    NavigationLink {
                        
                        SecondTabView_3()
                    } label: {
                        Text("Бывшие участники")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                    }
                    //                .navigationTitle("Состав группы")
                }
            }
        }
    }
}

struct SecondTabView_2_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView_2()
    }
}
