//
//  MainViewController.swift
//  MartinSimulator
//
//  Created by Martin Peshevski on 2/8/20.
//  Copyright © 2020 MP. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var speakStack: UIStackView!
    @IBOutlet var actionStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onKiss(_ sender: Button) {
        sender.isSelected = !sender.isSelected
        sender.containerView.backgroundColor = sender.isSelected ? UIColor.white : Button.backgroundColor
    }
    
    @IBAction func onPunch(_ sender: Button) {
        sender.isSelected = !sender.isSelected
        sender.containerView.backgroundColor = sender.isSelected ? UIColor.white : Button.backgroundColor
    }
    
    @IBAction func onSpeak(_ sender: Button) {
        switch sender.tag {
        case 1: NSLog("1")
        case 2: NSLog("2")
        case 3: NSLog("3")
        case 4: NSLog("4")
        default: return
        }
    }
    @IBAction func onSpeakUp(_ sender: Button) {
        sender.isSelected = !sender.isSelected
        sender.containerView.backgroundColor = sender.isSelected ? UIColor.white : Button.backgroundColor
        actionStack.fadeOut()
        speakStack.alpha == 0 ? speakStack.fadeIn() : speakStack.fadeOut()
    }
    @IBAction func onAction(_ sender: Button) {
        switch sender.tag {
        case 1: NSLog("1")
        case 2: NSLog("2")
        case 3: NSLog("3")
        case 4: NSLog("4")
        default: return
        }
    }
    
    @IBAction func onActionUp(_ sender: Button) {
        sender.isSelected = !sender.isSelected
        sender.containerView.backgroundColor = sender.isSelected ? UIColor.white : Button.backgroundColor
        speakStack.fadeOut()
        actionStack.alpha == 0 ? actionStack.fadeIn() : actionStack.fadeOut()
    }
}

extension UIView {
    func fadeIn() {
        UIView.animate(withDuration: 0.3) {
            self.alpha = 1
        }
    }
    
    func fadeOut() {
        UIView.animate(withDuration: 0.3) {
            self.alpha = 0
        }
    }
}
