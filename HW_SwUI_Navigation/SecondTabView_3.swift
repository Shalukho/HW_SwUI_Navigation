//
//  SecondTabView_3.swift
//  HW_SwUI_Navigation
//
//  Created by Анастасия Шалухо on 28.06.22.
//

import SwiftUI

struct SecondTabView_3: View {
    var body: some View {
        ZStack{ Color.orange.opacity(0.2).ignoresSafeArea()
            VStack{
                Text("Бывшие участники")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("""

Майк Портной — ударные, бэк-вокал (1985 - 2010)

Крис Коллинз[en] — вокал (1986)

Кевин Мур — клавишные (1986 - 1994)

Чарли Доминичи[en] — вокал (1987 - 1989)

Дерек Шеринян — клавишные (1994 - 1999)
""")
                    .foregroundColor(Color(hue: 0.111, saturation: 0.262, brightness: 0.255))
                    .padding([.top, .leading, .trailing])
            }
        }
    }
}

struct SecondTabView_3_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView_3()
    }
}
