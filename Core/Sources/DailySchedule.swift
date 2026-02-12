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
