//
//  DailyScheduleCircleChart.swift
//  Feature
//
//  Created by 박제형 on 2/10/26.
//

import SwiftUI
import Core

struct DailyScheduleCircleChart: View {
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: 0.25)
                .stroke(.blue, lineWidth: 20)
        }
        
    }
}

#Preview {
    DailyScheduleCircleChart()
}
