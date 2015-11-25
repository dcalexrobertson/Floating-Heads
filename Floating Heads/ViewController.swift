//
//  ViewController.swift
//  Floating Heads
//
//  Created by Alex on 2015-11-25.
//  Copyright © 2015 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FloatingMenuControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



    @IBAction func handleMenuButton(sender: UIButton) {
        
        let controller = FloatingMenuController(fromView: sender as UIButton)
        controller.delegate = self
        
        controller.buttonItems = [
            FloatingButton(image: UIImage(named: "icon-add")),
            FloatingButton(image: UIImage(named: "model-8")),
            FloatingButton(image: UIImage(named: "model-7")),
            FloatingButton(image: UIImage(named: "model-4")),
            FloatingButton(image: UIImage(named: "model-5")),
        ]
        
        controller.labelTitles = [
            "New Contact",
            "Heidi Hernandez",
            "Neil Ross",
            "Elijah Woods",
            "Bella Douglas"
        ]
        
        presentViewController(controller, animated: true, completion: nil)
    }
    
    // MARK: - FloatingMenuControllerDelegate
    
    func floatingMenuController(controller: FloatingMenuController, didTapOnButton button: UIButton, atIndex index: Int) {
        print("tapped index \(index)")
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}

