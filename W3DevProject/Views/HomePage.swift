//
//  HomePage.swift
//  W3DevProject
//
//  Created by Swayam Rustagi on 11/05/24.
//

import SwiftUI

struct HomePage: View {
    
    @StateObject var cartHandler = CartHandler()
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationStack{
            VStack{
                
                ScrollView{
                    
                    VStack{
                        
                        Spacer()
                    
                    SearchBar()
                    
                    Spacer()
                    
                    ScrollView{
                        LazyVGrid(columns: columns, spacing: 20){
                            ForEach(ProductLineUp){product in
                                NavigationLink{
                                    ProductDetailView(product: product)
                                        .environmentObject(cartHandler)
                                }label: {
                                    ProductTile(product: product)
                                        .environmentObject(cartHandler)
                                }
                            }
                        }
                        .padding()
                    }
                }
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Text("Discover")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                    }
                    
                    ToolbarItem(placement: .topBarTrailing){
                        NavigationLink{
                            CartView()
                                .environmentObject(cartHandler)
                        }label: {
                            CartButton(productCount: cartHandler.products.count)
                        }
                    }
                }
            }
            }
        }
    }
}

#Preview {
    HomePage()
}
