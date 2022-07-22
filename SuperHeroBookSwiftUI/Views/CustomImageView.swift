//
//  CustomImageView.swift
//  SuperHeroBookSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI

struct CustomImageView: View {
    
    var image: Image
    
    var body: some View {
        
        Image("batman")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5).shadow(radius: 15))
            
    }
}

struct CustomImageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomImageView(image: Image("batman"))
    }
}
