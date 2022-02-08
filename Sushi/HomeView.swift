//
//  HomeView.swift
//  Sushi
//
//  Created by Adilet Berdibekov on 22.12.2021.
//

import SwiftUI

struct HomeView: View {
    
    @State var suggest: String = ""
    let myMenus = [Menu(isActive: true, title: "Maki sushi"),Menu(isActive: false, title: "Chirashizushi"),Menu(isActive: false, title: "Nigirishizushi"),Menu(isActive: false, title: "Uramaki") ]
    
    let myItems = [Item(imageName: "item1", title: "Makimono Roll", subtitle: "Avocado roll", price: 3.40, bgColor: "orangeColor"), Item(imageName: "item2", title: "Rolled Sushi", subtitle: "Salmon slice", price: 5.40, bgColor: "blackColor"), Item(imageName: "item3", title: "Makimono Crab", subtitle: "Crab stick", price: 2.40, bgColor: "blackColor"), Item(imageName: "item4", title: "Kappamaki", subtitle: "Seaseme", price: 5.40, bgColor: "blackColor")]
    
    var body: some View {
        ZStack(alignment: .top) {
            Color("bgColor")
            VStack(alignment: .leading) {
                HStack {
                    Image("menu")
                        .resizable()
                        .frame(width: 36, height: 36, alignment: .center)
                    Spacer()
                    Image("avatar")
                        .resizable()
                        .frame(width: 48, height: 48, alignment: .center)
                }
                 .padding(.top, 50)
                
                VStack(alignment: .leading) {
                    Text("Healthy and")
                        .font(.system(size: 30, weight: .light))
                    
                    Spacer().frame(height: 5)
                    
                    Text("Delicious sushi")
                        .font(.system(size: 36, weight: .bold))
                }
               
                
                Spacer().frame(height: 20)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search your for favorite sushi", text: $suggest)
                        .font(.system(size: 16, weight: .light))
                        .foregroundColor(Color.gray)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(16)
                
                
                Spacer().frame(height: 20)
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack {
                        ForEach(myMenus, id: \.self) {
                            item in MenuClass(item: item)
                        }
                    }
                    
                })
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                        ForEach(myItems, id: \.self) {
                            item in NavigationLink(destination: DetailView(item: item)) {
                                ItemClass(item: item)
                            }
                        }
                    }.frame(width: UIScreen.main.bounds.width - 40)
                }
            }.padding(.horizontal, 20)
        }
        .navigationBarHidden(true)
        .navigationTitle("")
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
