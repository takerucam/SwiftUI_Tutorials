//
//  Chapter4.swift
//  SwiftUI_Tutorials
//
//  Created by 三宅武将 on 2024/04/09.
//

import SwiftUI

struct Chapter4: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            HStack {
                ForEach(1...numberOfPips, id: \.self) { _ in
                    DiceView()
                        .foregroundColor(.white)
                }
            }
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfPips -= 1
                }
                .disabled(numberOfPips == 1)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    numberOfPips += 1
                }
                .disabled(numberOfPips == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    Chapter4()
}
