//
//  ContentView.swift
//  Sushi
//
//  Created by Adilet Berdibekov on 22.12.2021.
//

import SwiftUI

struct Menu: Hashable, Codable {
    var isActive: Bool
    var title: String
}

struct Item: Hashable, Codable {
    var imageName: String
    var title: String
    var subtitle: String
    var price: Double
    var bgColor: String
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("bgColor")
                VStack {
                    Image("onboarding_bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Heaven of Sishi")
                        .font(.system(size: 36)).bold()
                        .foregroundColor(Color("blackColor"))
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text("Sushi is a traditional Japanese dish of prepared vinegared rice, usually with some sugar and salt, accompanied by a variety of ingredients.")
                        .multilineTextAlignment(.center)
                        .lineSpacing(5)
                        .foregroundColor(Color("GRAYColor"))
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(destination: HomeView()) {
                        ZStack {
                            HStack {
                                Image(systemName: "arrow.right")
                                    .font(.system(size: 24))
                                    .foregroundColor(.white)
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                                    .padding(.leading, -7)
                            }
                            .frame(width: 72, height: 72, alignment: .center)
                            .background(Color("blackColor"))
                            .cornerRadius(36)
                        }
                    }
                }.edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
