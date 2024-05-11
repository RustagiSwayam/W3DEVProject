//
//  CartButton.swift
//  W3DevProject
//
//  Created by Swayam Rustagi on 11/05/24.
//

import SwiftUI

struct CartButton: View {
    
    var productCount: Int
    
    var body: some View {
        ZStack{
            Image(systemName: "cart")
                .foregroundColor(.black)
                .font(.title2)
                .padding(.top, 6)
            
            if productCount > 0{
                Text("\(productCount)")
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 20, height: 20)
                    .background(.blue)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .offset(x: 18, y: -10)
            }
        }
    }
}

#Preview {
    CartButton(productCount: 1)
}
