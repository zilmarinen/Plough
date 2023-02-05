//
//  BadgeViewModel.swift
//
//  Created by Zack Brown on 05/02/2023.
//

import SwiftUI

public struct BadgeViewModel {
    
    let title: String
    let color: Color
    let textColor: Color
    
    public init(title: String, color: Color, textColor: Color = .primary) {
        
        self.title = title
        self.color = color
        self.textColor = textColor
    }
}
