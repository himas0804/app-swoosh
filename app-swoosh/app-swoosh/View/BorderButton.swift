//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Sateesh Peddaiahgari on 12/16/20.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
