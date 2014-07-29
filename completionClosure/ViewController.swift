//
//  ViewController.swift
//  completionClosure
//
//  Created by Gabriel Massana on 29/07/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()

    
    
        decorateUI(30.51, completionClosure: { (myFloat: CGFloat) in
            
            NSLog("2")

                println(myFloat)
            
            })
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func decorateUI (var tempY: CGFloat,
        completionClosure: (CGFloat -> Void))
    {
        NSLog("1")
        tempY = tempY * 2
        completionClosure(tempY)
    }
    
    
}

