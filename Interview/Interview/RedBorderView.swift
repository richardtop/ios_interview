//
//  RedBorderView.swift
//  RedBorderView
//
//  Created by Richard Topchii on 1.8.2021.
//

import UIKit

final class RedBorderView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.borderColor = UIColor.red.cgColor
        layer.borderWidth = 2
    }
}
