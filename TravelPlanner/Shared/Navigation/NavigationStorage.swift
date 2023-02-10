//
//  NavigationStorage.swift
//  TravelPlanner
//
//  Created by Maxim Gladkov on 10.02.2023.
//

import SwiftUI

final class NavigationStorage: ObservableObject {
    
    static let shared = NavigationStorage()
    
    @Published var path = [NavigationPathItem]()
    
    private init() { }
    
    func show(id: String, title: String, destination: @escaping () -> some View) {
        let item = NavigationPathItem(id: id, title: title) {
            AnyView(destination())
        }
        
        item.isShown = true
        path.append(item)
    }
    
    func popToRoot() {
        UIApplication.enableKeyWindowAnimation()
        path.removeLast(path.count)
    }
    
    func popTo(index: Int) {
        guard
            !path.isEmpty,
            index < path.count
        else {
            return
        }
        UIApplication.enableKeyWindowAnimation()
        path.removeLast(path.count - index)
    }
}
