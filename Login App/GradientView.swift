//
//  GradientView.swift
//  Login App
//
//  Created by Swift on 13.08.2022.
//

import Foundation
import UIKit

class WelcomePageGradientView: UIView {

    @IBInspectable private var startColor: UIColor? {
        didSet {
            setupGradientsColor()
        }
    }
    @IBInspectable private var endColor: UIColor? {
        didSet {
            setupGradientsColor()
        }
    }

    private let gradientLayer = CAGradientLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }

    private func setupGradient() {
        self.layer.addSublayer(gradientLayer)
        setupGradientsColor()
    }

    private func setupGradientsColor() {
        if let startColor = startColor, let endColor = endColor {
            gradientLayer.colors = [startColor.cgColor, endColor.cgColor]

        }
    }
}
