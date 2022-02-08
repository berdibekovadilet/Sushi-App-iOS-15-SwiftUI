//
//  DetailView.swift
//  Sushi
//
//  Created by Adilet Berdibekov on 23.12.2021.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var backMode: Binding<PresentationMode>
    var item: Item?
    
    var body: some View {
        ZStack(alignment: .top) {
            Color("blackColor")
            
            VStack(alignment: .leading, spacing: 0) {
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "arrow.left")
                                .font(.system(size: 24))
                                .foregroundColor(Color("blackColor"))
                                .onTapGesture {
                                    self.backMode.wrappedValue.dismiss()
                                }
                            Spacer()
                            Image(systemName: "heart.fill")
                                .font(.system(size: 24))
                                .foregroundColor(Color("orangeColor"))
                        }
                        .padding(.horizontal, 20)
                        
                        Image("detail")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            
                        
                        Spacer().frame(height: 20)
                        
                        HStack {
                            Spacer()
                            HStack {
                                Image(systemName: "minus")
                                    .font(.system(size: 24))
                                Spacer().frame(width: 20)
                                Text("02")
                                Image(systemName: "plus")
                                    .font(.system(size: 20))
                            }
                            .padding(.horizontal, 40)
                            .padding(.vertical, 20)
                            .background(Color.white)
                            .cornerRadius(40)
                            .shadow(color: Color.black.opacity(0.1), radius: 40, x: 5, y: 5)

                            Spacer()
                        }
                        
                        Spacer().frame(height: 30)
                        
                        Text(self.item!.title)
                            .padding(.leading, 20)
                        .font(.system(size: 24, weight: .semibold))
                        
                        Spacer().frame(height: 30)
                        
                        HStack {
                            Spacer()
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color("yellowColor"))
                                Text("5.0")
                                    .font(.system(size: 14, weight: .bold))
                                Image(systemName: "flame.fill")
                                    .foregroundColor(Color("orangeColor"))
                                Text("57 Calories")
                                    .font(.system(size: 14, weight: .bold))
                                Image(systemName: "clock.fill")
                                    .foregroundColor(Color("redColor"))
                                Text("20-25 Min")
                                    .font(.system(size: 14, weight: .bold))
                            }
                            .padding(.horizontal, 40)
                            .padding(.vertical, 30)
                            .background(Color.white)
                            .cornerRadius(16)
                            .shadow(color: Color.black.opacity(0.1), radius: 40, x: 5, y: 5)
                            
                            Spacer()
                        }
                        
                        Spacer().frame(height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Ingridients")
                                .padding(.leading, 20)
                                .font(.system(size: 20))
                            Spacer().frame(height: 30)
                            Text("Short-grain white rice is usually used, altrhouth short-grain brown rice, like olive oil on nori, is now becoming more widespread")
                                .padding(.leading, 20)
                                .foregroundColor(Color("GRAYColor"))
                                .lineSpacing(5)
                            
                        }
                    }
                    .padding(.top, 50)
                    .frame(height: UIScreen.main.bounds.height - 80)
                    .background(Color("bgColor"))
                    .cornerRadius(30)
                    
                    HStack {
                        Spacer()
                        Text("Place Order")
                        Image(systemName: "arrow.right")
                        Image(systemName: "chevron.right")
                            .padding(.leading, -7)
                            .font(.system(size: 14))
                        Spacer()
                    }.foregroundColor(.white)
                    .frame(height: 60)
                })
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let item = Item(imageName: "item1", title: "Makimono Roll", subtitle: "Avocado roll", price: 3.40, bgColor: "orangeColor")
        DetailView(item: item)
    }
}
