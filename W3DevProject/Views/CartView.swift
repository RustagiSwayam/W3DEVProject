//
//  CartView.swift
//  W3DevProject
//
//  Created by Swayam Rustagi on 11/05/24.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartHandler: CartHandler
    var body: some View {
        NavigationStack{
            
            VStack{
                
                ScrollView{
                    if cartHandler.products.count > 0{
                        ForEach(cartHandler.products){product in
                            CartProductTile(product: product)
                                .padding()
                        }
                        
                        Spacer()
                        
                        VStack(spacing: 20){
                            HStack{
                                Text("Sub-total")
                                    .foregroundStyle(.gray)
                                    .font(.title2)
                                
                                Spacer()
                                
                                Text("\(cartHandler.cartValue)")
                                    .foregroundStyle(.black)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                            }
                            
                            HStack{
                                Text("GST")
                                    .foregroundStyle(.gray)
                                    .font(.title2)
                                
                                Spacer()
                                
                                Text("Included")
                                    .foregroundStyle(.black)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                            }
                            
                            Divider()
                            
                            HStack{
                                Text("Total")
                                    .foregroundStyle(.gray)
                                    .font(.title2)
                                
                                Spacer()
                                
                                Text("\(cartHandler.cartValue)")
                                    .foregroundStyle(.black)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                            }
                        }
                        .padding()
                        
                    }else{
                        Text("Cart is empty!")
                    }
                }
                .navigationTitle("Cart")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartHandler())
}
