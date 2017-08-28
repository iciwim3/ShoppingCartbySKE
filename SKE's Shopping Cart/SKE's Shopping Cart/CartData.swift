//
//  CartData.swift
//  SKE's Shopping Cart
//
//  Created by Sain-R Edwards Jr. on 8/27/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import UIKit

class CartData {
    
    class func getCourseData() -> [ShoppingCart] {
        
        let iPadProCart = ShoppingCart(image: #imageLiteral(resourceName: "img_ipad"), title: "iPad Pro", price: 599, quantity: 00)
        
        let appleWatchCart = ShoppingCart(image: #imageLiteral(resourceName: "img_watch"), title: "Apple Watch", price: 150, quantity: 00)
        
        let appleTVCart = ShoppingCart(image: #imageLiteral(resourceName: "img_tv"), title: "Apple TV", price: 99, quantity: 00)
        
        return [iPadProCart, appleTVCart, appleWatchCart]
    }
    
}

