//
//  RootViewController.swift
//  生活大爆炸
//
//  Created by Benjamin on 12/6/15.
//  Copyright © 2015 Benjamin. All rights reserved.
//

import UIKit

class RootViewController: RESideMenu,RESideMenuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func awakeFromNib() {
        self.menuPreferredStatusBarStyle = .LightContent;
        self.contentViewShadowColor = UIColor.blackColor()
        self.contentViewShadowOffset = CGSizeMake(0, 0);
        self.contentViewShadowOpacity = 0.6;
        self.contentViewShadowRadius = 12;
        self.contentViewShadowEnabled = true;
        
        self.contentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("contentViewController")
        self.leftMenuViewController = self.storyboard?.instantiateViewControllerWithIdentifier("leftMenuController")
        self.backgroundImage = UIImage(named: "Stars")
        self.delegate = self
    }
    
    func sideMenu(sideMenu: RESideMenu!, didHideMenuViewController menuViewController: UIViewController!) {
        print("didHideMenuViewController: ")
    }
    
    func sideMenu(sideMenu: RESideMenu!, didShowMenuViewController menuViewController: UIViewController!) {
        print("didShowMenuViewController: ")
    }
    
    func sideMenu(sideMenu: RESideMenu!, willHideMenuViewController menuViewController: UIViewController!) {
        print("willHideMenuViewController: ")
    }
    
    func sideMenu(sideMenu: RESideMenu!, willShowMenuViewController menuViewController: UIViewController!) {
        print("willShowMenuViewController: ")
    }

}
