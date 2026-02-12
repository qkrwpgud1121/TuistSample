//
//  DailySchedule.swift
//  Core
//
//  Created by 박제형 on 2/12/26.
//

import Foundation

public struct DailySchedule {
    public var title: String
    public var startTime: Date
    public var endTime: Date
    public var weekDay: Weekday
    
    public init(title: String, startTime: Date, endTime: Date, weekDay: Weekday) {
        self.title = title
        self.startTime = startTime
        self.endTime = endTime
        self.weekDay = weekDay
    }
}

extension DailySchedule {
    public static var sampleData: [DailySchedule] {
        [
            DailySchedule(title: "출근", startTime: date(from: "07:30"), endTime: date(from: "09:00"), weekDay: .mon),
            DailySchedule(title: "회사", startTime: date(from: "09:00"), endTime: date(from: "18:00"), weekDay: .mon),
            DailySchedule(title: "퇴근", startTime: date(from: "18:00"), endTime: date(from: "19:00"), weekDay: .mon)
        ]
    }
    
    private static func date(from string: String) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.date(from: string) ?? Date()
    }
}
