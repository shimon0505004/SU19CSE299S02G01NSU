//
//  greyBackgroundForTextField.swift
//  Junior Design Project
//
//  Created by Shafiqul  Islam on 7/6/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//
import Foundation
import UIKit

@IBDesignable
class greyBackgroundForTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: 30))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8840534687, green: 0.8784657121, blue: 0.8883432746, alpha: 0.7970675616)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//        formatter.locale = .current
//        currencyLbl.text = formatter.currencySymbol
//        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.9959436059, green: 0.9896478057, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6000000238)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}
