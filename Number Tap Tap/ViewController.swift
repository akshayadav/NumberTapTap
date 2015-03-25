//
//  ViewController.swift
//  Number Tap Tap
//
//  Created by Akshay Yadav on 3/20/15.
//  Copyright (c) 2015 Akshay Yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var width: CGFloat?
    var height: CGFloat?
    
    @IBOutlet weak var mainImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(false);
        
        
        var screenSize: CGRect = UIScreen.mainScreen().bounds
        
        width = screenSize.width
        height = screenSize.height
        
        if ((width == 320.0)&&(height == 480.0)){
            
            println("3.5 inch")
            
             // set as you want
            mainImage.image = UIImage(named: "iphone35.png")
        }
        if ((width == 320.0)&&(height == 568.0)){
            
            println("4 inch")
            mainImage.image = UIImage(named: "iphone4.png")
        }
        if ((width == 375.0)&&(height == 667.0)){
            
            println("4.7 inch")
            mainImage.image = UIImage(named: "iphone47.png")
        }
        if ((width == 414.0)&&(height == 736.0)){
            
            println("5.5 inch")
            mainImage.image = UIImage(named: "iphone55.png")
        }
        if ((width == 768.0)&&(height == 1024.0)){
            
            println("ipad")
            mainImage.image = UIImage(named: "ipad.png")
        }
        
    }
    

}

