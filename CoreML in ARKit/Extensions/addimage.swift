//
//  addimage.swift
//  CoreML in ARKit
//
//  Created by Stephanie on 3/12/18.
//  Copyright © 2018 CompanyName. All rights reserved.
//

import UIKit

extension UIAlertController {
    func addImage(image: UIImage) {
        let maxSize = CGSize(width: 245, height: 380)
        let imgSize = image.size
        var ratio: CGFloat!
        
        if (imgSize.width > imgSize.height) {
            ratio = maxSize.width / imgSize.width
        }else {
            ratio = maxSize.height / imgSize.height
        }
        
        let scaledSize  = CGSize(width: imgSize.width * ratio, height: imgSize.height * ratio)
        
        var resizedImage = image.imageWithSize(scaledSize)
        
        
        if (imgSize.height > imgSize.width) {
            let left = (maxSize.width - resizedImage.size.width) / 2
            resizedImage = resizedImage.withAlignmentRectInsets(UIEdgeInsetsMake(0, -left, 0 , 0))
        }
        
        let imgAction = UIAlertAction(title: "", style: .default, handler: nil)
        imgAction.isEnabled = true
        imgAction.setValue(resizedImage.withRenderingMode(.alwaysOriginal), forKey: "image")
        self.addAction(imgAction)
    }
}
