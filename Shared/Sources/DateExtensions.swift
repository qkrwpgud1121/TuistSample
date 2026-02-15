//
//  DateExtensions.swift
//  Shared
//
//  Created by 박제형 on 2/15/26.
//

import Foundation

extension Date {
    
    public var dayProgress: Double {
        let calendar = Calendar.current
        let hour = Double(calendar.component(.hour, from: self))
        let minute = Double(calendar.component(.minute, from: self))
        
        return (hour * 60 + minute) / 1440
    }
}
