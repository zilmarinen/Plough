//
//  ComponentGroup.swift
//
//  Created by Zack Brown on 05/02/2023.
//

import SwiftUI

public struct ComponentGroup<Content: View>: View {
    
    private let model: ComponentGroupViewModel?
    private let content: Content

    public init(model: ComponentGroupViewModel? = nil, @ViewBuilder content: () -> Content) {
        
        self.model = model
        self.content = content()
    }
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {

                if let imageName = model?.imageName {
                    
                    Image(systemName: imageName)
                        .foregroundColor(.primary)
                }

                if let title = model?.title {
                    
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.primary)
                }
            
                if let badge = model?.badge {
                    
                    Spacer()
                    
                    BadgeView(model: badge)
                }
            }
            
            VStack {
            
                content
            }
            .controlSize(.small)
            .labelsHidden()
            .padding(Constants.padding)
            .background(Color(NSColor.controlBackgroundColor))
            .cornerRadius(Constants.cornerRadius)
        }
    }
}

