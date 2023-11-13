//
//  WeatherTimeView.swift
//  swiftui-stack-view
//
//  Created by Chandra Welim on 13/11/23.
//

import SwiftUI

struct WeatherTimeView: View {
    
    var hourLabel: String
    var systemImageString: String
    var degreeLabel: String
    
    var body: some View {
        VStack {
            Text(hourLabel)
            Image(systemName: systemImageString)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text(degreeLabel)
        }
    }
}

struct WeatherTimeView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherTimeView(hourLabel: "Now",
                        systemImageString: "cloud",
                        degreeLabel: "33")
    }
}
