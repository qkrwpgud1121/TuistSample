//
//  DashboardView.swift
//  Core
//
//  Created by 박제형 on 2/5/26.
//

import SwiftUI
import Core

public struct DashboardView: View {
    
    private var contributions = DailyContribution.sampleData
    private var schedules = DailySchedule.sampleData
    
    public init() {}
    
    public var body: some View {
        ScrollView {
            VStack {
                DailyScheduleCircleChart(schedules: schedules)
                MonthlyHeatmap(contributions: contributions)
                DailyTodoList()
            }
            .padding()
        }
    }
}

#Preview {
    DashboardView()
}
