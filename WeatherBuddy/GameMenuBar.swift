//
//  GameMenuBar.swift
//  WeatherBuddyMyV
//
//  Created by csuftitan on 11/11/26.
//

import SwiftUI

struct GameMenuBar: View {
    @Binding var state: appState
    var body: some View {
        HStack{
            Text("Weather Icon?")
            Text("Welcome Buddy")
            Button("Close Game"){
                state = appState.closing
            }
        }
    }
}
#Preview {
    @Previewable @State var state = appState.closing
    GameMenuBar(state: $state)
}

