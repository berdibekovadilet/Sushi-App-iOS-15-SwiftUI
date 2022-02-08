//
//  ItemClass.swift
//  Sushi
//
//  Created by Adilet Berdibekov on 23.12.2021.
//

import SwiftUI

struct ItemClass: View {
    
    var item : Item?
    
    var body: some View {
        VStack(alignment: .leading) {
           
            Spacer()
            Image(self.item!.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            Text(self.item!.title)
                .font(.system(size: 22, weight: .bold)).lineLimit(1)
                .foregroundColor(Color("blackColor"))
            
            HStack {
                VStack(alignment: .leading) {
                    Text(self.item!.subtitle)
                        .font(.system(size: 18))
                        .foregroundColor(Color("GRAYColor"))
                    
                    Spacer().frame(height: 10)
                    Text("$" + String(self.item!.price) + "0").bold()
                        .foregroundColor(Color("blackColor"))
                    
                }
                
                Spacer()
                
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(Color(self.item!.bgColor))
                    .font(.system(size: 40))
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
    }
}

struct ItemClass_Previews: PreviewProvider {
    static var previews: some View {
        let item = Item(imageName: "item1", title: "Makimono Roll", subtitle: "asasd", price: 5.40, bgColor: "orangeColor")
        ItemClass(item: item)
    }
}
