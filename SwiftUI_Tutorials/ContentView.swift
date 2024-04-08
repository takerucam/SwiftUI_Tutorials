//
//  ContentView.swift
//  SwiftUI_Tutorials
//
//  Created by 三宅武将 on 2024/04/07.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
            HStack {
                DayForecast(
                    day: "Mon",
                    isRainy: false,
                    high: 70,
                    low: 50
                )
                
                DayForecast(
                    day: "Tue",
                    isRainy: true,
                    high: 60,
                    low: 40
                )
            }
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("Height: \(high)")
                .fontWeight(.semibold)
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
