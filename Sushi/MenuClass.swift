//
//  MenuClass.swift
//  Sushi
//
//  Created by Adilet Berdibekov on 22.12.2021.
//

import SwiftUI

struct MenuClass: View {
    
    var item: Menu?
    
    var body: some View {
        if(self.item!.isActive) {
            HStack {
                Circle().fill(Color("orangeColor"))
                    .frame(width: 10, height: 10, alignment: .center)
                
                Text(self.item!.title)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .background(Color.white)
            .cornerRadius(8)
        }
        else {
            HStack {
                
                Text(self.item!.title)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            
        }
    }
}

struct MenuClass_Previews: PreviewProvider {
    static var previews: some View {
        let item = Menu(isActive: true, title: "Asasad")
        MenuClass(item: item)
    }
}
