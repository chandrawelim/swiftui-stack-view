//
//  ContentView.swift
//  swiftui-stack-view
//
//  Created by Chandra Welim on 11/11/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(spacing: 8) {
                Text("Jakarta")
                    .font(.system(size: 30, weight: .regular))
                    .foregroundColor(.white)
                Text("32°")
                    .font(.system(size: 40, weight: .regular))
                    .foregroundColor(.white)
                Text("Mostly Cloudy")
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(.white)
                
                HStack {
                    Text("H: 33°")
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.white)
                    Text("L: 25°")
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.white)
                }
                
                VStack(spacing: 8) {
                    Text("Partly cloudy conditions from 15:-16:00, with drizzle expected at 17.00.")
                        .padding(.top)
                    
                    Divider()
                    
                    HStack(spacing: 8) {
                        WeatherTimeView(hourLabel: "Now",
                                        systemImageString: "cloud.fill",
                                        degreeLabel: "33°")
                        
                        WeatherTimeView(hourLabel: "15",
                                        systemImageString: "cloud.sun",
                                        degreeLabel: "31°")
                        
                        WeatherTimeView(hourLabel: "16",
                                        systemImageString: "cloud.fill",
                                        degreeLabel: "30°")
                        
                        WeatherTimeView(hourLabel: "17",
                                        systemImageString: "cloud.drizzle",
                                        degreeLabel: "29°")
                        
                        WeatherTimeView(hourLabel: "18",
                                        systemImageString: "cloud.bolt",
                                        degreeLabel: "28°")
                        
                        WeatherTimeView(hourLabel: "19",
                                        systemImageString: "cloud.bolt.rain",
                                        degreeLabel: "26°")
                    }
                    .padding(.bottom)
                }
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                
                VStack(spacing: 8) {
                    HStack {
                        Image(systemName: "calendar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Text("DAYS FORECAST")
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                    .padding()
                    
                    Divider()
                        .padding(.trailing)
                        .padding(.leading)

                    WeatherForecastView(dayLabel: "Today",
                                        systemImageString: "cloud.rain",
                                        degreeFromLabel: "25°",
                                        degreeToLabel: "33°")
                    
                    WeatherForecastView(dayLabel: "Sun",
                                        systemImageString: "cloud.rain",
                                        degreeFromLabel: "25°",
                                        degreeToLabel: "33°")
                    
                    WeatherForecastView(dayLabel: "Sun",
                                        systemImageString: "cloud.rain",
                                        degreeFromLabel: "25°",
                                        degreeToLabel: "33°")
                
                }
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
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
