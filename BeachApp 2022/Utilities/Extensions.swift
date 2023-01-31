//
//  Extensions.swift
//  BeachApp 2022
//
//  Created by David on 31/01/2023.
//

import Foundation
import UIKit

//MARK: Date
extension Date {
    init(from dateString: String, formattedAs format: String = "dd.MM.yyyy") {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        self = formatter.date(from: dateString)!
    }
    
    func toString(formattedAs format: String = "dd MMM") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let str = formatter.string(from: self)
        
        return str
    }
}
