//
//  ContentView.swift
//  SuperHeroBookSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            
            List(superHeroArray) { superhero in
                NavigationLink {
                    DetailView(chosenHero: superhero)
                } label: {
                    ListRowView(imageName: superhero.imageName, superheroName: superhero.name, superheroRealName: superhero.realName)
                    
                }

            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
