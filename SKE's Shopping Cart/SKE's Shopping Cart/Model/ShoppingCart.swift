//
//  ShoppingCart.swift
//  SKE's Shopping Cart
//
//  Created by Sain-R Edwards Jr. on 8/27/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import Foundation

enum ShippingType: Double {
    case standard = 0.0
    case express = 15.00
}

class ShoppingCart {
    var itemStore = ItemStore()
    var total: Double = 0
    var shippingType: ShippingType = .standard
    private var selectedItemsDict: [String: Int] = [:] // [uid - quantity]
    let taxPercentage: Double = 10.00
    
    func getTotal() -> Double {
        var totalBeforeTax = 0.0
        for (uid, quantity) in selectedItemsDict {
            if let price = self.itemStore.getPriceFor(itemWith: uid) {
                totalBeforeTax += (price * Double(quantity))
            }
        }
        
        let calculator = Calculator(totalBeforeTax: totalBeforeTax, shippingCost: shippingType.rawValue, taxPercentage: taxPercentage)
        return calculator.getTotalAmount()
    }
    
    func add(item: Item) {
        if var quantity = selectedItemsDict[item.uid] {
            quantity += 1
            selectedItemsDict[item.uid] = quantity
        } else {
            // the item does not exist yet
            selectedItemsDict[item.uid] = 1
        }
    }
    
    func remove(item: Item) {
        if var quantity = selectedItemsDict[item.uid] {
            quantity -= 1
            selectedItemsDict[item.uid] = quantity
        }
    }
    
    func reset() {
        self.total = 0
        self.shippingType = .standard
        self.selectedItemsDict = [:]
    }
}

