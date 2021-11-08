// Weather Button

import SwiftUI

struct WeatherButton: View {
    
    var imageName: String
    var label: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
            Text(label)
        }
        .frame(width:280, height: 50)
        .background(backgroundColor)
        .foregroundColor(textColor)
        .font(.system(size: 20, weight: .bold, design: .default))
        .cornerRadius(10)
    }
}
