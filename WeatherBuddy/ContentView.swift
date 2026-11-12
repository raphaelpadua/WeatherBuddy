import SwiftUI
import Playgrounds

enum appState {
    case loading
    case running
    case closing
}

struct ContentView: View {
    @State private var state = appState.loading
    var body: some View {
        if(state == .loading){
            WelcomeView(state: $state)
        } else if(state == .running){
            GameView(state: $state)
        } else if (state == .closing){
            GoodbyeView(state: $state)
        } else {
            Text("error")
        }
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
