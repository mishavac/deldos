import SwiftUI

struct MainScreenView: View {
    var body: some View {
        VStack {
            Spacer()
            
            // Создаем горизонтальный стек для иконки и кнопки
            HStack {
                // Системная иконка, похожая на иконку Telegram
                Image(systemName: "paperplane.fill")  // Используйте системную иконку для замены
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                
                // Кнопка для открытия Telegram
                Button(action: {
                    openTelegram()
                }) {
                    Text("Telegram")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            
            Text("MADE BY MISHAVAC")
                .font(.largeTitle)
                .padding()
            
            Spacer()
            
            // Вы можете добавить другие элементы сюда, если нужно
        }
    }
    
    // Функция для открытия Telegram
    func openTelegram() {
        // Ссылка на Telegram профиль
        let username = "WhiteAngelsHaveNoWings"  // Ваш username в Telegram
        if let url = URL(string: "tg://resolve?domain=\(username)") {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
            } else {
                // Если Telegram не установлен, открываем ссылку в Safari
                if let webURL = URL(string: "https://t.me/\(username)") {
                    UIApplication.shared.open(webURL)
                }
            }
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}

