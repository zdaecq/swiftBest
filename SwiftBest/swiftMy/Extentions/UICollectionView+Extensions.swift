//
//  UICollectionViewExtentions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 15.07.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension UICollectionView {

    func dequeueReusableCell <T: UICollectionViewCell>(identifier: T.Type, forIndexPath indexPath: NSIndexPath) -> T {
        let identifierString = String(identifier)
        return dequeueReusableCellWithReuseIdentifier(identifierString, forIndexPath: indexPath) as! T
    }

    func dequeueReusableSupplementaryView <T: UICollectionReusableView>(kind kind: String, withReuseIdentifier identifier: T.Type, forIndexPath indexPath: NSIndexPath) -> T {
        let identifierString = String(identifier)
        return dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: identifierString, forIndexPath: indexPath) as! T
    }
}


extension UICollectionView {

    func registerNibCell <T: UICollectionViewCell>(identifier: T.Type) {
        let identifierString = String(identifier)
        let nib = UINib(nibName: identifierString, bundle: nil)
        registerNib(nib, forCellWithReuseIdentifier: identifierString)
    }

    func registerNibSupplementaryView <T: UICollectionReusableView>(kind kind: String, identifier: T.Type) {
        let identifierString = String(identifier)
        let nib = UINib(nibName: identifierString, bundle: nil)
        registerNib(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifierString)
    }
}
