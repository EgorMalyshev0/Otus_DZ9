//
//  Date+Year.swift
//  DZ№9
//
//  Created by Egor Malyshev on 09.01.2022.
//

import Foundation

extension String {
    func yearString() -> String? {
        let dateFormatter = ISO8601DateFormatter()
        if let date = dateFormatter.date(from: self) {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy"
            return formatter.string(from: date)
        }
        return nil
    }
}
