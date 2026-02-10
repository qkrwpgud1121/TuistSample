//
//  MonthlyHeatmap.swift
//  Feature
//
//  Created by 박제형 on 2/10/26.
//

import SwiftUI
import Core

struct MonthlyHeatmap: View {
    
    let contributions: [DailyContribution]
    
    private let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 7)
    
    var body: some View {
        
        LazyVGrid(columns: columns) {
            ForEach(1..<31) { day in
                RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundColor(.gray.opacity(0.2))
            }
        }
    }
}

#Preview {
    MonthlyHeatmap(contributions: DailyContribution.sampleData)
}
