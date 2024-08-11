import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedView: String = "Main"  // Отслеживание текущего выбранного экрана
    @State private var isMenuOpen = false  // Добавляем состояние для анимации

    var body: some View {
        NavigationView {
            ZStack {
                // Отображение текущего выбранного экрана
                Group {
                    if selectedView == "Main" {
                        MainScreenView()  // Показываем новый экран
                    } else if selectedView == "Screenshot" {
                        Screenshot()
                    } else if selectedView == "Apps" {
                        Apps()
                    }
                    // Добавляйте дополнительные экраны здесь
                }
                .navigationBarTitle(selectedView, displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    withAnimation {
                        self.isMenuOpen.toggle()  // Поворот иконки при открытии меню
                        self.showMenu.toggle()  // Открыть/закрыть меню
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                        .rotationEffect(.degrees(isMenuOpen ? 90 : 0))  // Поворот иконки
                        .animation(.easeInOut(duration: 0.3))  // Анимация поворота
                })

                // Боковое меню
                if showMenu {
                    HStack {
                        VStack(alignment: .leading) {
                            // Кнопки для переключения между экранами
                            Button(action: {
                                self.selectedView = "Main"
                                withAnimation {
                                    self.showMenu = false
                                }
                            }) {
                                Text("Main")
                                    .padding()
                                    .background(Color.blue)  // Изменение фона кнопки
                                    .foregroundColor(.white) // Изменение цвета текста
                                    .font(.headline)         // Изменение стиля шрифта
                                    .cornerRadius(8)         // Скругленные углы
                            }

                            Button(action: {
                                self.selectedView = "Screenshot"
                                withAnimation {
                                    self.showMenu = false
                                }
                            }) {
                                Text("Screenshot")
                                    .padding()
                                    .background(Color.blue)  // Изменение фона кнопки
                                    .foregroundColor(.white) // Изменение цвета текста
                                    .font(.headline)         // Изменение стиля шрифта
                                    .cornerRadius(8)         // Скругленные углы
                            }

                            Button(action: {
                                self.selectedView = "Apps"
                                withAnimation {
                                    self.showMenu = false
                                }
                            }) {
                                Text("Apps")
                                    .padding()
                                    .background(Color.blue)  // Изменение фона кнопки
                                    .foregroundColor(.white) // Изменение цвета текста
                                    .font(.headline)         // Изменение стиля шрифта
                                    .cornerRadius(8)         // Скругленные углы
                            }

                            // Добавляйте дополнительные кнопки здесь

                            Spacer()
                        }
                        .frame(width: 200)
                        .background(Color.gray.opacity(0.9))  // Фон бокового меню
                        .offset(x: showMenu ? 0 : -200)
                        Spacer()
                    }
                    .transition(.move(edge: .leading))  // Анимация перехода меню
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

