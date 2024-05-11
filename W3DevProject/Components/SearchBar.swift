//
//  SearchBar.swift
//  W3DevProject
//
//  Created by Swayam Rustagi on 11/05/24.
//

import SwiftUI

struct SearchBar: View {
    
    var searchBarWidth: CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            return screenWidth - 40
        }
    
    @State private var SearchText = ""
    var body: some View {
        VStack{
            HStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.gray)
                        .font(.title2)
                    
                    TextField("eg. iPhone 12 Pro", text: $SearchText)
                        .foregroundStyle(.gray)
                        .font(.title3)
                }
                .padding()
                .background(.clear)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay{
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.gray, lineWidth: 1)
                }
                
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.vertical, 3)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            .frame(width: searchBarWidth)
        }
    }
}

#Preview {
    SearchBar()
}
