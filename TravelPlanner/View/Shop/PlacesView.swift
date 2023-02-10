//
//  PlacesView.swift
//  TravelPlanner
//
//  Created by Maxim Gladkov on 10.02.2023.
//

import SwiftUI

struct PlacesView: View {
    var body: some View {
        NavigationStack(path: $storage.path) {
            ZStack {
                Color.black.opacity(0.6)
                
                Button("Go to Food") {
                    storage.show(id: FoodView.navigationID, title: "") {
                        FoodView()
                    }
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

//struct PlacesView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlacesView()
//    }
//}
