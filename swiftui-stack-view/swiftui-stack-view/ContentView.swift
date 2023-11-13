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
            LinearGradient(gradient: Gradient(colors: [.black, .gray]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
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
                        VStack {
                            Text("Now")
                            Image(systemName: "cloud.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            Text("33°")
                        }
                        
                        VStack {
                            Text("15")
                            Image(systemName: "cloud.sun")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            Text("31°")
                        }
                        
                        VStack {
                            Text("16")
                            Image(systemName: "cloud.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            Text("30°")
                        }
                        
                        VStack {
                            Text("17")
                            Image(systemName: "cloud.drizzle")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            Text("29°")
                        }
                        
                        VStack {
                            Text("18")
                            Image(systemName: "cloud.bolt")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            Text("28°")
                        }
                        
                        VStack {
                            Text("19")
                            Image(systemName: "cloud.bolt.rain")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            Text("26°")
                        }
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
                        
                        Text("3-DAY FORECAST")
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                    .padding()
                    
                    Divider()
                        .padding(.trailing)
                        .padding(.leading)

                    HStack {
                        Text("Today")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .frame(width: 60, alignment: .leading)
                        
                        Image(systemName: "cloud.rain")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Text("25°")
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
                        
                        Text("33°")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                    }
                    .padding()
                    
                    Divider()
                        .padding(.trailing)
                        .padding(.leading)
                    
                    HStack {
                        Text("Sun")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .frame(width: 60, alignment: .leading)
                        
                        Image(systemName: "cloud.rain")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Text("25°")
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
                        
                        Text("34°")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                    }
                    .padding()
                    
                    Divider()
                        .padding(.trailing)
                        .padding(.leading)
                    
                    HStack {
                        Text("Sun")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .frame(width: 60, alignment: .leading)
                        
                        Image(systemName: "cloud.rain")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Text("25°")
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
                        
                        Text("34°")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                    }
                    .padding()
                    
                    Divider()
                        .padding(.trailing)
                        .padding(.leading)
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
