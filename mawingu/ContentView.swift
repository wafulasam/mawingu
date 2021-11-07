//
//  ContentView.swift
//  mawingu
//
//  Created by Sammie on 06/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    // state management
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : Color("lightBlue"))
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temeperature: 24)
                Spacer()
                HStack (spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 24)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 30)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 10)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 20)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 5)
                }
                Spacer()
                Button(action: { isNight.toggle() }) {
                    WeatherButton(label: "Change Day Time", textColor: .blue, backgroundColor: .white)
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

// background view
struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color

    var body: some View {
        LinearGradient(
            gradient: Gradient(colors:[topColor, bottomColor]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
            .edgesIgnoringSafeArea(.all)
    }
}

// city text view
struct CityTextView: View {

    var cityName: String
    
    var body: some View {
        Text("\(cityName)")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
    
}

// main weather status view
struct MainWeatherStatusView: View {
    var imageName: String
    var temeperature: Int
    
    var body: some View {
        VStack (spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temeperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}


// weather day view
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
