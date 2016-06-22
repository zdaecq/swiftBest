//
//  LoadingView.swift
//  AlamofireTest
//
//  Created by zdaecqze zdaecq on 09.06.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit

public class LoadingView{
    
    var centerView = UIView()
    var activityIndicator = UIActivityIndicatorView()
    var darkBackgroundView = UIView()
    
    static let sharedInstance = LoadingView()
    
    init() {
        
        darkBackgroundView.frame = UIScreen.mainScreen().bounds
        darkBackgroundView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        
        centerView.frame = CGRectMake(0, 0, 80, 80)
        centerView.center = darkBackgroundView.center
        centerView.backgroundColor = UIColor(white: 0, alpha: 0.8)
        centerView.clipsToBounds = true
        centerView.layer.cornerRadius = 10
        
        activityIndicator.frame = CGRectMake(0, 0, 40, 40)
        activityIndicator.center = darkBackgroundView.center
        activityIndicator.activityIndicatorViewStyle = .WhiteLarge
        
        darkBackgroundView.addSubview(centerView)
        darkBackgroundView.addSubview(activityIndicator)
    }
    
    public func showInView(view: UIView) {
        activityIndicator.startAnimating()
        view.addSubview(darkBackgroundView)
        darkBackgroundView.alpha = 0
        UIView.animateWithDuration(0.3) {
            self.darkBackgroundView.alpha = 1
        }
    }

    
    public func hide() {
        activityIndicator.stopAnimating()
        darkBackgroundView.removeFromSuperview()
    }
}
