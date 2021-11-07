// Weather Button

import SwiftUI

struct WeatherButton: View {
    
    var label: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(label)
            .frame(width:280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
