//
//  ComponentView.swift
//
//  Created by Zack Brown on 05/02/2023.
//

import SwiftUI

public struct ComponentView<Content: View>: View {
    
    private let title: String
    private let color: Color
    private let content: Content

    public init(title: String, color: Color, @ViewBuilder content: () -> Content) {
        
        self.title = title
        self.color = color
        self.content = content()
    }

    public var body: some View {
        
        HStack {
            
            Group {
            
                Circle()
                    .fill(color)
                    .frame(width: Constants.cornerRadius,
                           height: Constants.cornerRadius)
                
                Text(title)
                    .font(.subheadline)
            }
            
            Spacer()
            
            content
        }
    }
}
