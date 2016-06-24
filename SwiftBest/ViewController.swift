//
//  ViewController.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 20.06.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func actionShowModal(sender: UIButton) {
        
        performSegueWithIdentifier("modal", sender: nil) { (segue) in
            let vc = segue.destinationViewController
            vc.view.backgroundColor = UIColor.redColor()
        }
        
//        LoadingView.sharedInstance.showInView(view)
//        
//        ez.runThisAfterDelay( seconds: 1, after: { [weak self] in
//            LoadingView.sharedInstance.hide()
//            
//            self?.performSegueWithIdentifier("modal", sender: nil) { (segue) in
//                let vc = segue.destinationViewController
//                vc.view.backgroundColor = UIColor.redColor()
//            }
//        })
    }
    
}

