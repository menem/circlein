//
//  RoundedButton.swift
//  circlein
//
//  Created by Menem Ragab on 12/31/18.
//  Copyright © 2018 Menem Ragab. All rights reserved.
//

import UIKit

@IBDesignable

class TCRoundedButton: UIButton {
    @IBInspectable var cornerRadius : CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    override func awakeFromNib() {
        self.setupView()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    func setupView() {
         self.layer.cornerRadius = cornerRadius
    }
}
