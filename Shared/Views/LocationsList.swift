//
//  LocationsList.swift
//  TrekrMultiPlatform
//
//  Created by Steven Zhang on 2022-01-19.
//

import SwiftUI

struct LocationsList: View {
    
    @ObservedObject var store: LocationStore
    
    var body: some View {
        
        List(store.places) { location in
            
            NavigationLink(destination: LocationDetail(location: location)) {
                
                HStack {
                    
                    Image(location.heroPicture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    VStack(alignment: .leading){
                        Text(location.name)
                        Text(location.country)
                            .font(.subheadline)
                    }
                    
                }
                
            }
            
        }
        .navigationTitle("Locations")
    }
}

struct LocationsList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationsList(store: testStore)
        }
    }
}
