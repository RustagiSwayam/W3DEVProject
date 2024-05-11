//
//  ProductTile.swift
//  W3DevProject
//
//  Created by Swayam Rustagi on 11/05/24.
//

import SwiftUI

struct ProductTile: View {
    
    @EnvironmentObject var cartHandler: CartHandler
    
    var product: ProductModel
    
    var body: some View {
        VStack{
            ZStack(alignment: .topTrailing){
                Image(product.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 170, height: 170)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Button{
                    print("add to cart button was pressed")
                    cartHandler.addToCart(product: product)
                    
                }label: {
                    Image(systemName: "plus")
                        .foregroundStyle(.white)
                        .padding()
                        .background(.black)
                        .frame(width: 20, height: 20)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .offset(x: 5, y: -5)
                }
            }
            
            VStack(alignment: .leading){
                HStack{
                    Text(product.name)
                        .foregroundStyle(.gray)
                        .font(.callout)
                    
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        
                        Text(String(format: "%.1f", product.rating))
                    }
                }
                
                Text("₹\(product.price)")
                    .foregroundStyle(.black)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
        }
        .frame(width: 160)
    }
}

#Preview {
    ProductTile(product: ProductModel(name: "iPhone 15", price: 69900, rating: 4.5, image: "iphone15", detail: "The iPhone SE combines the compact form factor of earlier iPhone models with modern performance and capabilities. Offering a familiar design reminiscent of the classic iPhone look, the iPhone SE features a powerful A-series chip for smooth performance, a high-quality camera system for capturing great photos and videos, and support for the latest iOS updates. Ideal for users who prefer a smaller device without sacrificing performance, the iPhone SE delivers a premium iPhone experience at a more affordable price point."))
        .environmentObject(CartHandler())
}
