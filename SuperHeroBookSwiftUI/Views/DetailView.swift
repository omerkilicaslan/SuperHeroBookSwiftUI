//
//  DetailView.swift
//  SuperHeroBookSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI

struct DetailView: View {
    
    var chosenHero: SuperHero
    
    var body: some View {
        VStack{
            MapView(coordinate: chosenHero.coordinateLocation)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)
            
            CustomImageView(image: Image(chosenHero.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                .offset(y: UIScreen.main.bounds.height * -0.15)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(chosenHero: batman)
    }
}
