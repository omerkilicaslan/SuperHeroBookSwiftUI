//
//  ListRowView.swift
//  SuperHeroBookSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI

struct ListRowView: View {
    
    var imageName: String
    var superheroName: String
    var superheroRealName:String
    
    var body: some View {
        HStack {
            
            Image(imageName).resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .cornerRadius(10)
                .shadow(radius: 20)
            VStack (alignment: .leading){
                Text(superheroName)
                    .font(.title)
                    .foregroundColor(.black)
                Text(superheroRealName)
                    .font(.title3)
                    .foregroundColor(.black)
                    
            }
            .padding()
            
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(imageName: "batman", superheroName: "batman", superheroRealName: "Bruce Wayne")
    }
}
