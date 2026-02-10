//
//  DailyContribution.swift
//  Core
//
//  Created by 박제형 on 2/5/26.
//

import Foundation

public struct DailyContribution: Identifiable {
    public let id: UUID
    public let date: Date
    public let totalCount: Int
    public let completedCount: Int
    
    public init(id: UUID = UUID(), date: Date, totalCount: Int, completedCount: Int) {
        self.id = id
        self.date = date
        self.totalCount = totalCount
        self.completedCount = completedCount
    }
}

extension DailyContribution {
    public static var sampleData: [DailyContribution] {
        [
            DailyContribution(date: Date(), totalCount: 10, completedCount: 3),
            DailyContribution(date: Date(), totalCount: 8, completedCount: 7),
            DailyContribution(date: Date(), totalCount: 10, completedCount: 5)
        ]
    }
}
