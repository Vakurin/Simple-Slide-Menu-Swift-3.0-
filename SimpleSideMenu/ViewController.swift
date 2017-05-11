//
//  ViewController.swift
//  SimpleSideMenu
//
//  Created by Максим Вакурин on 09.05.17.
//  Copyright © 2017 Vakurin Maxim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuBarButtomItem: UIBarButtonItem!
    
    var menuVC: MenuViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       menuVC = self.storyboard?.instantiateViewController(withIdentifier: "menuVC") as! MenuViewController
        
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(hadlerSwipe))
        swipeRight.direction = .right
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(hadlerSwipe))
        swipeLeft.direction = .left
        
        self.view.addGestureRecognizer(swipeRight)
        self.view.addGestureRecognizer(swipeLeft)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func hadlerSwipe(gesture: UISwipeGestureRecognizer) {
        switch gesture.direction {
        case UISwipeGestureRecognizerDirection.right:
            showMenu()
        case UISwipeGestureRecognizerDirection.left:
            hideMenu()
        default: break
        }
    }
    
    
    @IBAction func menuBarButtomItem(_ sender: UIBarButtonItem) {
        
        if AppDelegate.isMenuVC {
            showMenu()
        } else {
            hideMenu()
        }
    }
    
    func showMenu () {
       UIView.animate(withDuration: 0.4) {
            self.menuVC.view.frame = CGRect(x: 0, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        self.addChildViewController(self.menuVC)
        self.view.addSubview(self.menuVC.view)
        AppDelegate.isMenuVC = false
        }
    }
    
    func hideMenu() {
        UIView.animate(withDuration: 0.3, animations: { 
            self.menuVC.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }) { (finished) in
            self.menuVC.view.removeFromSuperview()
            AppDelegate.isMenuVC = true
        }
        
    }

}

