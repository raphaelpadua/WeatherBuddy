//
//  GoodByeView.swift
//  WeatherBuddyMyV
//
//  Created by csuftitan on 11/11/26.
//

import Foundation
import SwiftUI


struct GoodbyeView: View {
    @Binding var state: appState
    var body: some View {
        VStack {
            Text("Goodbye!")
        }
    }
}


#Preview {
    @Previewable @State var state = appState.loading
    WelcomeView(state: $state)
}

