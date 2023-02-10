//
//  NavigationPathItem.swift
//  TravelPlanner
//
//  Created by Maxim Gladkov on 10.02.2023.
//

import SwiftUI

final class NavigationPathItem: Identifiable {
    
    
    let id: String
    let title: String?
    var isShown: Bool
    var destination: () -> AnyView
    
    init(id: String,
         title: String?,
         isShown: Bool = false,
         destination: @escaping () -> AnyView)
    {
        self.id          = id
        self.title       = title
        self.isShown     = isShown
        self.destination = destination
    }
}

extension NavigationPathItem: Hashable {
    
    static func == (lhs: NavigationPathItem, rhs: NavigationPathItem) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
