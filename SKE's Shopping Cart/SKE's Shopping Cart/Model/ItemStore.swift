//
//  ItemStore.swift
//  SKE's Shopping Cart
//
//  Created by Sain-R Edwards Jr. on 8/28/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import UIKit

struct Item {
    var uid: String
    var title: String
    var price: Double
    var image: UIImage
}

class ItemStore {
    var items: [Item] = [
        Item(uid: "iPad Pro", title: "iPad Pro", price: 599, image: #imageLiteral(resourceName: "img_ipad")),
        Item(uid: "Apple Watch", title: "Apple Watch", price: 159, image: #imageLiteral(resourceName: "img_watch")),
        Item(uid: "Apple TV", title: "Apple TV", price: 199, image: #imageLiteral(resourceName: "img_tv"))
    ]
    
    func getPriceFor(itemWith uid: String) -> Double? {
        for item in self.items {
            if item.uid == uid {
                return item.price
            }
        }
        return nil
    }
}
