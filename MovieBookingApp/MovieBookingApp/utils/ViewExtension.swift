//
//  ViewExtension.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/12/21.
//

import Foundation
import UIKit

extension UILabel{
    
    func underlinelabel(text:String){
        
        let attributeString = NSMutableAttributedString.init(string: text)
        attributeString.addAttribute(NSAttributedString.Key.underlineStyle, value: 3, range: NSRange(location: 0, length: attributeString.length))
        self.attributedText = attributeString
        
    }
}
extension UITextField{
    
    func underlineTextField(text:String){
        
        let attributeString = NSMutableAttributedString.init(string: text)
        attributeString.addAttribute(NSAttributedString.Key.underlineStyle, value: 3, range: NSRange(location: 0, length: attributeString.length))
        self.attributedText = attributeString
        
    }
}

