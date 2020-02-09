//
//  Button.swift
//  MartinSimulator
//
//  Created by Martin Peshevski on 2/8/20.
//  Copyright © 2020 MP. All rights reserved.
//

import UIKit

class Button: UIButton {
    override func didMoveToWindow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowRadius = 2
        layer.shadowOpacity = 0.6

        let containerView = UIImageView()
        containerView.layer.cornerRadius = frame.height/2
        containerView.layer.masksToBounds = true
        containerView.backgroundColor = backgroundColor
        layer.backgroundColor = UIColor.clear.cgColor
        containerView.isUserInteractionEnabled = false
        containerView.image = image(for: .normal)
        containerView.contentMode = .center
        
        addSubview(containerView)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
