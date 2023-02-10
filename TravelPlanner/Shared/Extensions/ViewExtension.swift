//
//  ViewExtension.swift
//  TravelPlanner
//
//  Created by Maxim Gladkov on 10.02.2023.
//

import SwiftUI

extension View {
    static var navigationID: String {
        String(describing: self)
    }
}
