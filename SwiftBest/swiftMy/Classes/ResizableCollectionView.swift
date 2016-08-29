//
//  ResizableCollectionView.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 28.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

// v1
class ResizableCollectionView: UICollectionView {

    override var contentSize: CGSize {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }

    override func intrinsicContentSize() -> CGSize {
        self.layoutIfNeeded()
        return CGSizeMake(UIViewNoIntrinsicMetric, contentSize.height)
    }
}

// v2
class DynamicCollectionView: UICollectionView {
    override func layoutSubviews() {
        super.layoutSubviews()
        if bounds.size != intrinsicContentSize() {
            invalidateIntrinsicContentSize()
        }
    }
    
    override func intrinsicContentSize() -> CGSize {
        return self.contentSize
    }
}
