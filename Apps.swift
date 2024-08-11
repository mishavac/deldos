//
//  apps.swift
//  deldos
//
//  Created by Mikhail on 10.08.2024.
//

import SwiftUI

struct Apps: View {
    @State private var commandInput: String = ""

    var body: some View {
        VStack {
            Text("Type apps name")
            TextField("Enter command", text: $commandInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                self.sendCommand()
            }) {
                Text("Send Command")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
    }

    func sendCommand() {
        guard let url = URL(string: "\(Constants.serverIP)/execute_command") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        // Форматируем команду
        let command = "open -a \(commandInput)"
        let jsonData = try? JSONSerialization.data(withJSONObject: ["command": command])

        let task = URLSession.shared.uploadTask(with: request, from: jsonData) { data, response, error in
            guard let data = data, error == nil else {
                print("Ошибка: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            print(String(data: data, encoding: .utf8) ?? "")
        }
        task.resume()
    }
}

struct Apps_Previews: PreviewProvider {
    static var previews: some View {
        Apps()
    }
}
