//
//  ViewController.swift
//  AnimationApp
//
//  Created by Данила Умнов on 11.08.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var springView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animation = Animation.getAnimation
        presetLabel.text = "preset: \(animation.name)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(animation.force)"
        durationLabel.text = "duration: \(animation.duration)"
        delayLabel.text = "delay: \(animation.delay)"
    }
    
    @IBAction func buttonAction(_ sender: SpringButton) {
        springView.animation = animation.name
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        springView.animate()
        
        presetLabel.text = "preset: \(animation.name)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(animation.force)"
        durationLabel.text = "duration: \(animation.duration)"
        delayLabel.text = "delay: \(animation.delay)"
        animation = Animation.getAnimation
        
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

