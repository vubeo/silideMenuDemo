//
//  ViewController.swift
//  slide-out
//
//  Created by Đỗ Hoàng Vũ on 4/3/18.
//  Copyright © 2018 Đỗ Hoàng Vũ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ubeView: UIView!
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var trailingC: NSLayoutConstraint!
    
    var hamburgerMenuIsvisible = false
    
    @IBAction func hambugerzbtnTapped(_ sender: Any) {
        // if the hamburger menu is Not visible , then move the ubeview back to where it used to be
        if !hamburgerMenuIsvisible{
            leadingC.constant = 200
            trailingC.constant = -150
            //1
            hamburgerMenuIsvisible = true
        } else {
            // if the hambuger menu is visible , then move the ubeView bac to its original position
            leadingC.constant = 0
            trailingC.constant = 0
            // 2
            hamburgerMenuIsvisible = false
        }
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseInOut, animations: {self.view.layoutIfNeeded()}) { (animationComplete) in
            print("the animation is pcomplete")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

