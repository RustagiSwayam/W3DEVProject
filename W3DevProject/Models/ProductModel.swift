//
//  ProductModel.swift
//  W3DevProject
//
//  Created by Swayam Rustagi on 11/05/24.
//

import Foundation

struct ProductModel: Identifiable{
    var id = UUID()
    
    let name: String
    let price: Int
    let rating: Double
    let image: String
    let detail: String
}

var ProductLineUp = [

    ProductModel(
        name: "iPhone 15",
        price: 69900,
        rating: 4.1,
        image: "iphone15",
        detail: "The iPhone 15 represents the latest iteration of Apple's iconic smartphone line. Known for its sleek design, cutting-edge technology, and powerful performance, the iPhone 15 boasts advanced features such as a stunning Super Retina XDR display, an upgraded A-series chip for enhanced speed and efficiency, and an innovative camera system for capturing stunning photos and videos. With its seamless integration into the Apple ecosystem and a wide range of available apps and services, the iPhone 15 continues to set the standard for premium mobile devices."
    ),
    ProductModel(
        name: "iPhone SE",
        price: 39900,
        rating: 3.9,
        image: "iphoneSE",
        detail: "The iPhone SE combines the compact form factor of earlier iPhone models with modern performance and capabilities. Offering a familiar design reminiscent of the classic iPhone look, the iPhone SE features a powerful A-series chip for smooth performance, a high-quality camera system for capturing great photos and videos, and support for the latest iOS updates. Ideal for users who prefer a smaller device without sacrificing performance, the iPhone SE delivers a premium iPhone experience at a more affordable price point."
    ),
    ProductModel(
        name: "iPad",
        price: 41900,
        rating: 4.5,
        image: "ipads",
        detail: "The iPad is Apple's flagship tablet device, renowned for its versatility, performance, and stunning display. Whether used for productivity, entertainment, or creativity, the iPad offers a range of features to suit various needs. With support for the Apple Pencil and a variety of productivity apps, the iPad is a powerful tool for work and creativity alike. Additionally, its expansive App Store provides access to a wealth of apps and games, making it suitable for users of all ages."
    ),
    ProductModel(
        name: "iPad Pro",
        price: 89900,
        rating: 4.2,
        image: "ipadPro",
        detail: "The iPad Pro represents the pinnacle of Apple's tablet technology, designed for professional users and power users alike. Featuring a stunning Liquid Retina XDR display, the iPad Pro delivers incredible color accuracy and brightness, making it ideal for content creation, editing, and consumption. With the powerful A-series chip, advanced camera system, and support for accessories like the Apple Pencil and Magic Keyboard, the iPad Pro offers desktop-class performance in a sleek and portable form factor, making it the ultimate tool for creative professionals and enthusiasts."
    ),
    ProductModel(
        name: "Apple Watch SE",
        price: 29900,
        rating: 4.7,
        image: "iwatch",
        detail: "The Apple Watch SE offers the essential features of the Apple Watch at a more affordable price point. Combining the convenience of a smartwatch with powerful health and fitness tracking capabilities, the Apple Watch SE helps users stay connected, motivated, and informed throughout the day. With features like heart rate monitoring, activity tracking, and built-in GPS, the Apple Watch SE is the perfect companion for an active lifestyle."
    ),
    ProductModel(
        name: "Apple Watch Ultra",
        price: 79900, 
        rating: 4.0,
        image: "iwatchUltra",
        detail: "The Apple Watch Ultra represents the pinnacle of Apple's wearable technology, offering advanced features and capabilities for users who demand the very best. With a sleek design, stunning display, and advanced health and fitness tracking capabilities, the Apple Watch Ultra helps users stay on top of their health and wellness goals. Whether tracking workouts, monitoring heart health, or staying connected on the go, the Apple Watch Ultra delivers an unparalleled experience for discerning users."
    ),
    ProductModel(
        name: "Airpods 2",
        price: 9900,
        rating: 5.0,
        image: "airpods",
        detail: "AirPods 2 are Apple's second-generation wireless earbuds, offering seamless connectivity, high-quality audio, and intuitive controls in a compact and stylish design. With features like automatic pairing, Siri integration, and quick access to music and calls, AirPods 2 provide a convenient and immersive listening experience for users on the go. Whether used for music, podcasts, or calls, AirPods 2 deliver crystal-clear sound and all-day comfort."
    ),
    ProductModel(
        name: "Airpods Max",
        price: 69900,
        rating: 3.6,
        image: "airpodsMax",
        detail: "AirPods Max are Apple's premium over-ear headphones, combining high-fidelity audio with advanced features and luxurious design. Featuring custom-built drivers, computational audio, and active noise cancellation, AirPods Max deliver immersive sound with exceptional clarity and detail. With a breathable knit mesh canopy, memory foam ear cushions, and a stainless steel frame, AirPods Max offer unparalleled comfort for extended listening sessions. Additionally, features like spatial audio, transparency mode, and seamless integration with Apple devices make AirPods Max the ultimate audio companion for discerning listeners."
    )

]
