//
//  WeatherForecastView.swift
//  swiftui-stack-view
//
//  Created by Chandra Welim on 13/11/23.
//

import SwiftUI

struct WeatherForecastView: View {
    
    var dayLabel: String
    var systemImageString: String
    var degreeFromLabel: String
    var degreeToLabel: String
    
    var body: some View {
        HStack {
            Text(dayLabel)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .semibold))
                .frame(width: 60, alignment: .leading)
            
            Image(systemName: systemImageString)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
            
            Text(degreeFromLabel)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .semibold))
            
            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.orange, .red]),
                                         startPoint: .topLeading,
                                         endPoint: .bottomTrailing))
                    .frame(height: 4)
                    .cornerRadius(10)
            }
            
            Text(degreeToLabel)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .semibold))
        }
        .padding()
        
        Divider()
            .padding(.trailing)
            .padding(.leading)
    }
}

struct WeatherForecastView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherForecastView(dayLabel: "Today",
                            systemImageString: "cloud",
                            degreeFromLabel: "25°",
                            degreeToLabel: "33°")
    }
}
