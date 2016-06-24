//
//  OCOrderTextAttachment.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 09.06.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension NSAttributedString {
    
    class func getText(text: String, withImage imageName: String) -> NSAttributedString {
        
        let imageAttachment = ImageTextAttachment(data: nil, ofType: nil)
        imageAttachment.image = UIImage(named: imageName)
        let imageString = NSAttributedString(attachment: imageAttachment)
        
        let newString = NSMutableAttributedString(attributedString: imageString)
        let attributedText = NSAttributedString(string: text)
        newString.appendAttributedString(attributedText)
        return newString
    }
}


class ImageTextAttachment: NSTextAttachment {
    
    override func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect {
        
        // TODO: Fix this class
        let image = UIImage(named: "")
        let width = (image?.size.width)!
        let height = (image?.size.height)!
        let newBounds = CGRect(x: 0, y: -1.5, width: width, height: height)
        return newBounds;
    }
}

