//
//  UIViewExtensions.swift
//  MakingReorderable
//
//  Created by Ömer Firat on 12.11.2020.
//  Copyright © 2020 Omer Firat. All rights reserved.
//

import UIKit
@IBDesignable
extension UIView{
    @IBInspectable var cornerRadius: CGFloat{
        get{return self.layer.cornerRadius}
        set{self.layer.cornerRadius = newValue}
    }
    
}
