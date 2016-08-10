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

        // TODO: Fix this class. use comented code below
        let image = UIImage(named: "")
        let width = (image?.size.width)!
        let height = (image?.size.height)!
        let newBounds = CGRect(x: 0, y: -1.5, width: width, height: height)
        return newBounds
    }
}

//let textView = UITextView(frame: CGRectMake(50, 50, 200, 300))
//let attributedString = NSMutableAttributedString(string: "before after")
//let textAttachment = NSTextAttachment()
//textAttachment.image = UIImage(named: "sample_image.jpg")!

//let oldWidth = textAttachment.image!.size.width;

////I'm subtracting 10px to make the image display nicely, accounting
////for the padding inside the textView
//let scaleFactor = oldWidth / (textView.frame.size.width - 10);
//textAttachment.image = UIImage(CGImage: textAttachment.image!.CGImage, scale: scaleFactor, orientation: .Up)
//var attrStringWithImage = NSAttributedString(attachment: textAttachment)
//attributedString.replaceCharactersInRange(NSMakeRange(6, 1), withAttributedString: attrStringWithImage)
//textView.attributedText = attributedString;
//self.view.addSubview(textView)
