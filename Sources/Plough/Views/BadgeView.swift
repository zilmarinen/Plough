//
//  BadgeView.swift
//
//  Created by Zack Brown on 05/02/2023.
//

import SwiftUI

public struct BadgeView: View {
    
    private let model: BadgeViewModel
    
    public init(model: BadgeViewModel) {
        
        self.model = model
    }
    
    public var body: some View {
        
        Text(model.title)
            .font(Constants.badgeFont)
            .foregroundColor(model.textColor)
            .padding(Constants.edgeInsets)
            .background(model.color)
            .cornerRadius(Constants.padding)
    }
}
