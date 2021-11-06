//
//  ContentView.swift
//  mawingu
//
//  Created by Sammie on 06/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors:[.blue, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
