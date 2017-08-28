//
//  CheckoutViewController.swift
//  SKE's Shopping Cart
//
//  Created by Sain-R Edwards Jr. on 8/28/17.
//  Copyright © 2017 Appybuildmore. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var standardShippingBtn: UIButton!
    @IBOutlet weak var expressShippingBtn: UIButton!
    
    var shoppingCart: ShoppingCart!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Check Out"
        standardShippingBtn.isSpringLoaded = false  // Default is shown as standard shipping selected
        self.updateUI()
    }
    
    func updateUI() {
        totalLabel.text = "\(shoppingCart.getTotal())"
    }
    
    @IBAction func standardShippingButtonTapped(_ sender: UIButton) {
        shoppingCart.shippingType = .standard
        standardShippingBtn.isEnabled = false
        expressShippingBtn.isEnabled = true
        
        self.updateUI()
    }
    
    @IBAction func expressShippingButtonTapped(_ sender: UIButton) {
        shoppingCart.shippingType = .express
        standardShippingBtn.isEnabled = true
        expressShippingBtn.isEnabled = false
        
        self.updateUI()
    }
    
    @IBAction func placeOrderButtonTapped(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Confirm Order", message: "Please confirm that you want to make a payment of \(shoppingCart.getTotal())!", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
        }
        
        let confirmAction = UIAlertAction(title: "Confirm", style: .default) { (action) in
            let successActionSheet = UIAlertController(title: "Thank you!", message: "Your payment of \(self.shoppingCart.getTotal()) was processed successfully! Please check your email for your order receipt email and shipping information.", preferredStyle: .actionSheet)
            let continueShoppingAction = UIAlertAction(title: "Let's Shop More!", style: .default, handler: { (action) in
                // TODO: - reset shopping cart, pop to root VC
                self.shoppingCart.reset()
                self.navigationController?.popToRootViewController(animated: true)
            })
            
            successActionSheet.addAction(continueShoppingAction)
            self.dismiss(animated: true, completion: nil)
            self.present(successActionSheet, animated: true, completion: nil)
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
