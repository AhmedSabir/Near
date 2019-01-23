//
//  GradiantView.swift
//  Near
//
//  Created by Ahmed Sabir on 07/03/1440 AH.
//  Copyright © 1440 Ahmed Sabir. All rights reserved.
//


import Foundation
import UIKit
class GradientView: UIView
{
    
  
    lazy fileprivate var gradientLayer: CAGradientLayer = {
        let layer = CAGradientLayer()
        let mojafeColor = UIColor(displayP3Red: 0.1098, green: 0.1686, blue: 0.2627, alpha: 0.60)
        //let cellMojafeColor = UIColor(displayP3Red: 0.1608, green: 0.2235, blue: 0.3176, alpha: 0.30)
        //let myColor =
        layer.colors = [mojafeColor.cgColor , UIColor(white: 0.0, alpha: 0.75).cgColor]
        layer.locations = [NSNumber(value: 0.0 as Float), NSNumber(value: 1.0 as Float)]
        return layer
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
        layer.addSublayer(gradientLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        backgroundColor = UIColor.clear
//        layer.addSublayer(gradientLayer)
//    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        gradientLayer.frame = bounds
        CATransaction.commit()
    }
    
}
