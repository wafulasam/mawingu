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
                
                VStack (spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack (spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 24)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 30)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 10)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 20)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 5)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text("\(dayOfWeek)")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
