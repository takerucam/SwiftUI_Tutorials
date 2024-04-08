//
//  WelcomePage.swift
//  SwiftUI_Tutorials
//
//  Created by 三宅武将 on 2024/04/08.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
            }
            
            Text("Welcome to MyApp")
                .font(.title)
            .fontWeight(.semibold)
            .padding(.top)
            
            Text("Description text")
                .font(.title2)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
