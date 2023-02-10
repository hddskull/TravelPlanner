//
//  CityView.swift
//  TravelPlanner
//
//  Created by Maxim Gladkov on 10.02.2023.
//

import SwiftUI

struct CityView: View {
    var body: some View {
        NavigationStack(path: $storage.path) {
            ZStack {
                Color.black.opacity(0.8)
                
                Button("Go to Places") {
                    storage.show(id: PlacesView.navigationID, title: "") {
                        PlacesView()
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

//struct CityView_Previews: PreviewProvider {
//    static var previews: some View {
//        CityView()
//    }
//}
