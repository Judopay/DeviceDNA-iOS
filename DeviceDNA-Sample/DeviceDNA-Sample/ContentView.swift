import DeviceDNA
import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    @State private var deviceSignalCount = 0

    var body: some View {
        Button("Get device data") {
            let deviceDNA = DeviceDNA(credentials: Credentials(token: "token", secret: "secret"))
            deviceDNA.getDeviceSignals { data, _ in
                self.deviceSignalCount = data?.count ?? 0
                self.showAlert = true
            }
        }
        .padding()
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Success!"),
                  message: Text("Device signal count (should be 2): \(deviceSignalCount)"),
                  dismissButton: Alert.Button.default(Text("OK")) { showAlert = false })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
