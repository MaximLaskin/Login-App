//
//  Gradient.swift
//  Login App
//
//  Created by Swift on 23.08.2022.
//

import UIKit
// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 255/255,
            green: 155/255,
            blue: 253/255,
            alpha: 1
        )

        let secondaryColor = UIColor(
            red: 13/255,
            green: 245/255,
            blue: 253/255,
            alpha: 1
        )

        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
