//
//  Extensions.swift
//  allVoices
//
//  Created by Aleksandr on 19/09/22.
//

import Foundation

extension Date
{
    func toString(dateFormat format: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}

