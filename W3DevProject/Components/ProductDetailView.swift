//
//  ProductDetailView.swift
//  W3DevProject
//
//  Created by Swayam Rustagi on 11/05/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var cartHandler: CartHandler
    
    let product: ProductModel
    
    var body: some View {
        ZStack(alignment: .bottom){
            ScrollView{
                VStack{
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .leading, spacing: 15){
                        Text(product.name)
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                            
                            Text(String(format: "%.1f", product.rating))
                        }
                        
                        Text(product.detail)
                            .font(.title3)
                            .foregroundStyle(.gray)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                }
                
            }
            .ignoresSafeArea()
            
            
            VStack{
                Divider()
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Price")
                            .foregroundStyle(.gray)
                            .font(.title3)
                        
                        Text("₹\(product.price)")
                            .foregroundStyle(.black)
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    
                    Spacer()
                    
                    Button{
                        cartHandler.addToCart(product: product)
                    }label: {
                        HStack{
                            Image(systemName: "cart")
                                .font(.title2)
                                .foregroundStyle(.white)
                            
                            Text("Add to Cart")
                                .font(.title2)
                                .foregroundStyle(.white)
                        }
                        .padding()
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                }
                .padding()
            }
            .background(.white)
            
        }
    }
}

#Preview {
    ProductDetailView(product: ProductModel(name: "iPad Pro", price: 89900, rating: 4.5, image: "ipadPro", detail: "The iPhone SE combines the compact form factor of earlier iPhone models with modern performance and capabilities. Offering a familiar design reminiscent of the classic iPhone look, the iPhone SE features a powerful A-series chip for smooth performance, a high-quality camera system for capturing great photos and videos, and support for the latest iOS updates. Ideal for users who prefer a smaller device without sacrificing performance, the iPhone SE delivers a premium iPhone experience at a more affordable price point."))
        .environmentObject(CartHandler())
}
