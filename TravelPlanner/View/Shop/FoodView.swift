//
//  FoodView.swift
//  TravelPlanner
//
//  Created by Maxim Gladkov on 10.02.2023.
//

import SwiftUI

struct FoodView: View {
    var body: some View {
        NavigationStack(path: $storage.path) {
            ZStack {
                Color.black.opacity(0.4)
                
                Button("Go to root") {
                    storage.popToRoot()
                }
            }
            .ignoresSafeArea()
            .navigationDestination(for: NavigationPathItem.self) { item in
                item.destination()
            }
        }
    }
        
    @StateObject private var storage = NavigationStorage.shared
    
}

//struct FoodView_Previews: PreviewProvider {
//    static var previews: some View {
//        FoodView()
//    }
//}
