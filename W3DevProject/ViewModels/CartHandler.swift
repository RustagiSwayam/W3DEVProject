//
//  CartHandler.swift
//  W3DevProject
//
//  Created by Swayam Rustagi on 11/05/24.
//

import Foundation

class CartHandler: ObservableObject{
    
    @Published  private(set) var products: [ProductModel] = []
    @Published  private(set) var cartValue: Int = 0
    
    
    func addToCart(product: ProductModel){
        products.append(product)
        cartValue += product.price
    }
    
    func deleteFromCart(product: ProductModel){
        products = products.filter{$0.id != product.id}
        cartValue -= product.price
    }
}
