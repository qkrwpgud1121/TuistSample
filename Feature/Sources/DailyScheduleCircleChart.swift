//
//  DailyScheduleCircleChart.swift
//  Feature
//
//  Created by 박제형 on 2/10/26.
//

import SwiftUI
import Core

struct DailyScheduleCircleChart: View {
    
    let schedules: [DailySchedule]
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(.gray, lineWidth: 20)
            
            ForEach(schedules, id: \.title) { schedule in
                Circle()
                    .trim(from: Date.progress(from: schedule.startTime, to: schedule.endTime), to: 0.25)
                    .stroke(.blue, lineWidth: 20)
                    .rotationEffect(.degrees(-90))
            }
        }
        
    }
}

#Preview {
    DailyScheduleCircleChart(schedules: DailySchedule.sampleData)
}
