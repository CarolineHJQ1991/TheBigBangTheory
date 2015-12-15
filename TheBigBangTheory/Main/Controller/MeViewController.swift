//
//  MeViewController.swift
//  TheBigBangTheory
//
//  Created by Caroline.H on 12/15/15.
//  Copyright © 2015 Caroline.H. All rights reserved.
//

import UIKit
import Foundation
import QuartzCore

class MeViewController: UIViewController {
    
    var bubble_blue = bubbleView()
    var bubble_pink = bubbleView()
    var bubble_yellow = bubbleView()
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        bubble_yellow.frame = CGRectMake(self.view.frame.width/2+10, self.view.frame.height/2-100, 120, 120)
        bubble_yellow.layer.cornerRadius = bubble_yellow.frame.size.width/2
        // bubble.layer.borderWidth = 1.0
        bubble_yellow.clipsToBounds = true // it is necessory to add when create a round rect or circle!
        bubble_yellow.backgroundColor = UIColor.clearColor()
        bubble_yellow.thumbnail.image = UIImage(named: "bubblegreen")
        self.view.addSubview(bubble_yellow)
        bubble_yellow.slideInFromLeft(0.25, completionDelegate: nil)
        
        bubble_pink.frame = CGRectMake(self.view.frame.width/2-130, self.view.frame.height/2-220, 120, 120)
        bubble_pink.layer.cornerRadius = bubble_pink.frame.size.width/2
        // bubble.layer.borderWidth = 1.0
        bubble_pink.clipsToBounds = true // it is necessory to add when create a round rect or circle!
        bubble_pink.backgroundColor = UIColor.clearColor()
        bubble_pink.thumbnail.image = UIImage(named: "bubblepink")
        self.view.addSubview(bubble_pink)
        bubble_pink.slideInFromLeft(0.25, completionDelegate: nil)
        
        bubble_blue.frame = CGRectMake(self.view.frame.width/2-90, self.view.frame.height/2-180, 170, 170)
        bubble_blue.layer.cornerRadius = bubble_blue.frame.size.width/2
        // bubble.layer.borderWidth = 1.0
        bubble_blue.clipsToBounds = true // it is necessory to add when create a round rect or circle!
        bubble_blue.backgroundColor = UIColor.clearColor()
        bubble_blue.thumbnail.image = UIImage(named: "bubbleblue")
        self.view.addSubview(bubble_blue)
        bubble_blue.slideInFromLeft(0.25, completionDelegate: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}