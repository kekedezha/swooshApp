//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Christian  Dezha on 9/24/22.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
