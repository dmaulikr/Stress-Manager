//
//  ViewController.swift
//  Stress Manager
//
//  Created by Daniel Yount on 2/29/16.
//  Copyright © 2016 Daniel Yount. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func animateButton(sender: AnyObject) {
        
        
        
        if (counter == 0){
            imageView.startAnimating()
            counter += 1
        } else if (counter == 1){
            imageView.stopAnimating()
            counter += 1
        } else if (counter == 2){
            imageView.startAnimating()
            counter += 1
        } else if (counter == 3){
            imageView.stopAnimating()
            counter = 0
        }
        
        imageView.stopAnimating()
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        imageView.animationImages = [
            
            UIImage(named: "Onboarding 1")!,
            UIImage(named: "Onboarding 2")!,
            UIImage(named: "Onboarding 3")!,
            UIImage(named: "Onboarding 4")!,
            UIImage(named: "Onboarding 5")!,
            UIImage(named: "profile view")!,
            UIImage(named: "dashboard view")!
            
        ]
        
        imageView.animationDuration = 12
        imageView.startAnimating()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }


}

