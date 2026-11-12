//
//  gameView.swift
//  WeatherBuddyMyV
//
//  Created by csuftitan on 11/11/26.
//

import Foundation
import SwiftUI


struct GameView: View {
    @Binding var state: appState
    var body: some View {
        VStack {
            GameMenuBar(state: $state)
            Text("Here is where the game will be.")
                .frame(width: 400, height: 300)
            gameActionBar()
        }
    }
}


#Preview {
    @Previewable @State var state = appState.loading
    WelcomeView(state: $state)
}

