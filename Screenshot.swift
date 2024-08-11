import SwiftUI

struct Screenshot: View {
    @State private var image: UIImage? = nil

    var body: some View {
        VStack {
            Button(action: {
                self.getScreenshot()
            }) {
                Text("Take Screenshot")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
        }
    }

    func getScreenshot() {
        guard let url = URL(string: "\(Constants.serverIP)/screenshot") else { return }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            if let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.image = image
                }
            }
        }
        task.resume()
    }
}

struct Screenshot_Previews: PreviewProvider {
    static var previews: some View {
        Screenshot()
    }
}

