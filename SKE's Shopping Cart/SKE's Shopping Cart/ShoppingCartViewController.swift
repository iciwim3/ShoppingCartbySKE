//
//  ShoppingCartViewController.swift
//  SKE's Shopping Cart
//
//  Created by Sain-R Edwards Jr. on 8/27/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import UIKit

class ShoppingCartViewController: UIViewController {
    
    @IBOutlet weak var ipadProStepperLabel: UILabel!
    @IBOutlet weak var iPadProTitleLabel: UILabel!
    @IBOutlet weak var iPadProPriceLabel: UILabel!
    @IBOutlet weak var iPadProImageView: UIImageView!
    
    @IBOutlet weak var appleTVStepperLabel: UILabel!
    @IBOutlet weak var appleTVTitleLabel: UILabel!
    @IBOutlet weak var appleTVPriceLabel: UILabel!
    @IBOutlet weak var appleTVImageView: UIImageView!
    
    @IBOutlet weak var appleWatchStepperLabel: UILabel!
    @IBOutlet weak var appleWatchTitleLabel: UILabel!
    @IBOutlet weak var appleWatchPriceLabel: UILabel!
    @IBOutlet weak var appleWatchImageView: UIImageView!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var ipadPrice: Int = 599
    var appleTVPrice: Int = 99
    var appleWatchPrice: Int = 150
    
    var cartData: [ShoppingCart] = CartData.getCourseData()
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    func updateTotalAmount(from stepper: UIStepper) {
        
    }
    
    func updateUI() {
        iPadProImageView.image = cartData[0].image
        iPadProTitleLabel.text = cartData[0].title
        iPadProPriceLabel.text = String(cartData[0].price)
        ipadProStepperLabel.text = String(cartData[0].quantity)
        
        appleTVImageView.image = cartData[1].image
        appleTVTitleLabel.text = cartData[1].title
        appleTVPriceLabel.text = String(cartData[1].price)
        appleTVStepperLabel.text = String(cartData[1].quantity)
        
        appleWatchImageView.image = cartData[2].image
        appleWatchTitleLabel.text = cartData[2].title
        appleWatchPriceLabel.text = String(cartData[2].price)
        appleWatchStepperLabel.text = String(cartData[2].quantity)
    }
    
    @IBAction func iPadStepperTapped(_ sender: UIStepper) {
        
    }
    
    @IBAction func appledTVStepperTapped(_ sender: UIStepper) {
    }
    
    @IBAction func appleWatchStepperTapped(_ sender: UIStepper) {
    }
    
    @IBAction func placeOrderButtonTapped(_ sender: Any) {
    }
    
}
