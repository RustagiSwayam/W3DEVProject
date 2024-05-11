//
//  CartProductTile.swift
//  W3DevProject
//
//  Created by Swayam Rustagi on 11/05/24.
//

import SwiftUI

struct CartProductTile: View {
    
    @EnvironmentObject var cartHandler: CartHandler
    
    var cardProdTitleWidth: CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            return screenWidth - 40
        }
    
    var product: ProductModel
    
    var body: some View {
        HStack{
            Image(product.image)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack(alignment: .leading){
                HStack{
                    Text("Apple \(product.name)")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button{
                        cartHandler.deleteFromCart(product: product)
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.gray)
                    }
                }
                
                Text("Apple")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text("₹\(product.price)")
                    .foregroundStyle(.black)
                    .font(.title2)
                    .fontWeight(.semibold)
                
            }
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .overlay{
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray.opacity(0.4), lineWidth: 1)
        }
        .frame(width: cardProdTitleWidth, height: 120)
    }
}

#Preview {
    CartProductTile(product: ProductModel(name: "iPad", price: 41900, rating: 4.5, image: "ipads", detail: "The iPhone SE combines the compact form factor of earlier iPhone models with modern performance and capabilities. Offering a familiar design reminiscent of the classic iPhone look, the iPhone SE features a powerful A-series chip for smooth performance, a high-quality camera system for capturing great photos and videos, and support for the latest iOS updates. Ideal for users who prefer a smaller device without sacrificing performance, the iPhone SE delivers a premium iPhone experience at a more affordable price point."))
        .environmentObject(CartHandler())
}
