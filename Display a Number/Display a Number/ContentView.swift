import SwiftUI
struct ContentView: View{
    @State private var numberTextField = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Display a Number")
                .font(.title).bold()
            TextField("Enter A Number", text: $numberTextField)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
                .onChange(of: numberTextField) { oldValue, newValue in
                    if let value = Int(newValue) {
                        if value % 2 == 0 {
                            imageName = "Even"
                        }
                        else {
                            imageName = "Odd"
                        }
                    }
            else {
                numberTextField = ""
                imageName = ""
            }
        }
            Image(imageName)
                .padding()
        Spacer()
    }
}
}
#Preview {
    ContentView()
}
