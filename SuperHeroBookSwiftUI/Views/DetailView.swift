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
                .edgesIgnoringSafeArea(.all)
                .overlay {
                    CustomImageView(image: Image(chosenHero.imageName))
                        .offset(y: UIScreen.main.bounds.height * 0.125)
                }.padding(.bottom, 100)
            
            VStack{
                
                HStack{
                    Text(chosenHero.name)
                        .font(.largeTitle)
                        .foregroundColor(.red)
                        .bold()
                        
                    
                    Spacer()
                    
                    Text(chosenHero.realName)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                        .bold()
                        

                }.padding()
                
                HStack{
                    
                    Text(chosenHero.city)
                        .font(.title)
                        .foregroundColor(.orange)
                        
                    
                    Spacer()
                    
                    Text(chosenHero.job)
                        .font(.title)
                        .foregroundColor(.red)
                        

                    
                }.padding()
            }
            .padding(.vertical, 75)
            
            
            Spacer()
            
                
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(chosenHero: batman)
    }
}
