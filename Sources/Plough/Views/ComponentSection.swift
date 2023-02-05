//
//  ComponentSection.swift
//
//  Created by Zack Brown on 05/02/2023.
//

import SwiftUI

public struct ComponentSection<Content: View>: View {
    
    private let content: Content

    public init(@ViewBuilder content: () -> Content) {
        
        self.content = content()
    }
    
    public var body: some View {
        
        VStack(alignment: .leading) {
        
            VStack {
            
                content
            }
            .labelsHidden()
            .padding(Constants.padding)
            .background(Color(NSColor.unemphasizedSelectedContentBackgroundColor))
            .cornerRadius(Constants.cornerRadius)
        }
    }
}
