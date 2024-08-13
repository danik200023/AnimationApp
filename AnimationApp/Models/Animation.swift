//
//  Animation.swift
//  AnimationApp
//
//  Created by Данила Умнов on 11.08.2024.
//

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static var getAnimation: Animation {
        Animation(
            name: DataStore.shared.animationNames.randomElement() ?? "squeezeLeft",
            curve: DataStore.shared.curves.randomElement() ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration:  Double.random(in: 1...2),
            delay: 0.30
        )
    }
}
