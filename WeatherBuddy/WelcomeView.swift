//
//  welcomeScreen.swift
//  WeatherBuddyMyV
//
//  Created by csuftitan on 11/11/26.
//

import Foundation
import SwiftUI


struct WelcomeView: View {
    @Binding var state: appState
    var body: some View {
        
        VStack {
            Button(action: runApp){
                Text("Weather Buddy")
                    .font(Font.title)
                    .border(.black, width: 1.5)
                    .frame(width: 400, height: 800)
            }
            
            Text("Press to start")
                .font(Font.title3)
        }
        .border(Color.orange, width: 1.5)
        .padding()
        .border(Color.purple, width: 1.5)
    }
    
    func runApp(){
        state = appState.running
    }
}


#Preview {
    @Previewable @State var state = appState.loading
    WelcomeView(state: $state)
}
