//
//  UIViewController+ImagePicker.swift
//  SwiftBest
//
//  Created by Yaroslav Bondar on 26.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UIViewController {
    
    struct ImagePickerSettings {
        var barTintColor : UIColor?
        var tintColor : UIColor?
        var barStyle : UIBarStyle?
    }
    
    
    func showPhotoLibrary() {
        showPhotoLibrary(animated: true, settings: nil)
    }
    
    func showPhotoLibrary(animated animated: Bool, settings: ImagePickerSettings?) {
        
        guard let controller = self as? protocol<UIImagePickerControllerDelegate, UINavigationControllerDelegate> else {
            print("ERROR: you need confirm protocols: UIImagePickerControllerDelegate, UINavigationControllerDelegate")
            return
        }
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = controller;
        imagePickerController.modalPresentationStyle = .OverFullScreen
        
        if let settings = settings {
            if let barTintColor = settings.barTintColor {
                imagePickerController.navigationBar.barTintColor = barTintColor
            }
            if let barStyle = settings.barStyle {
                imagePickerController.navigationBar.barStyle = barStyle
            }
            if let tintColor = settings.tintColor {
                imagePickerController.view.tintColor = tintColor
            }
        }
        presentViewController(imagePickerController, animated: animated, completion: nil)
    }
}

// MARK: - UIImagePickerControllerDelegate
//extension OCProfileEditController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//    
//    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
//        
//        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
//            let resizedImage = OCImage.resizeImage(pickedImage, newWidth: 512)
//            
//            OCAccountService.uploadAvatar(resizedImage).then { _ -> Void in
//                OCAccountService.currentUser!.avatarCache.clearMemoryCache()
//                OCAccountService.currentUser!.avatarCache.clearDiskCache()
//                self.photoImageView.kf_setImageWithURL(NSURL(string: Constants.URLs.userAvatarPath)!,
//                    placeholderImage: nil,
//                    optionsInfo: [.TargetCache(OCAccountService.currentUser!.avatarCache), .Transition(ImageTransition.Fade(1))])
//                }.catchAndShow()
//        }
//        
//        dismissViewControllerAnimated(true, completion: nil)
//    }
//}