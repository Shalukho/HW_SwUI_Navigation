//
//  ContentView.swift
//  HW_SwUI_Navigation
//
//  Created by Анастасия Шалухо on 26.06.22.
//
//

//Приложение на SwiftUI на три вкладки.
//1.На одной вкладке List с NavigationLink-ами. Список из чего нибудь (например писателей). Массивы чего нибудь (напиммер тех же писателей) хранится прямо во вью, без вью модели. Тип данных в массиве — самодельная структура. По нажатию на ячейку открывается детализированная вью с подробной информацией. Информация берется из модели, передеанной с основного вью в инициализатор детализированного контроллера.
//2. Вторая вкладка открывает контроллер по нав-линку, который открывает контроллер по навлинку, Такая рекурсия из трех контроллеров.
//3. Третяя вкладка показывает модальный контроллер



import SwiftUI

struct ContentView: View {
    @State private var selectedController = 0
    @State private var activateRootLink = false
        
    
    var body: some View {
        VStack {
            ZStack (alignment: .topTrailing) {
                TabView (selection: $selectedController) {
                    FirstTabView ()
                        .tabItem {
                            Image(systemName: "music.note")
                            Text("Albums")
                        }
                        .tag(0)
                    SecondTabView()
                        .tabItem {
                            Image (systemName: "person.3.sequence.fill")
                            Text("Состав")
                        }
                        .tag(1)
                    ThirdTabView()
                        .tabItem {
                            Image(systemName:  "seal.fill")
                            Text("Общие сведения")
                        }
                        .tag(2)
                }
                .accentColor(.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
