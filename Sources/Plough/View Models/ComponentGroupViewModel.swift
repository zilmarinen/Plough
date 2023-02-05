//
//  ComponentGroupViewModel.swift
//
//  Created by Zack Brown on 05/02/2023.
//

import SwiftUI

public struct ComponentGroupViewModel {
    
    let title: String
    let imageName: String?
    let badge: BadgeViewModel?
    
    public init(title: String, imageName: String? = nil, badge: BadgeViewModel? = nil) {
        
        self.title = title
        self.imageName = imageName
        self.badge = badge
    }
}
