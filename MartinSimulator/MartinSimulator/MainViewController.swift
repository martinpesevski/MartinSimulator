//
//  MainViewController.swift
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
        layer.backgroundColor = UIColor.clear.cgColor

        let containerView = UIView()
        containerView.layer.cornerRadius = frame.height/2
        containerView.layer.masksToBounds = true
        containerView.backgroundColor = .purple
        
        addSubview(containerView)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func onKiss(_ sender: Any) {
    }
    @IBAction func onPunch(_ sender: Any) {
    }
    @IBAction func onSpeak(_ sender: Any) {
    }
    @IBAction func onSpeakDown(_ sender: Any) {
    }
    @IBAction func onSpeakUp(_ sender: Any) {
    }
    @IBAction func onAction(_ sender: Any) {
    }
    @IBAction func onActionDown(_ sender: Any) {
    }
    @IBAction func onActionUp(_ sender: Any) {
    }
    

}
