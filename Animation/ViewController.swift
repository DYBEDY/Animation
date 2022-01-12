//
//  ViewController.swift
//  Animation
//
//  Created by Roman on 11.01.2022.
//

import Spring
import CoreGraphics

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var animationButton: UIButton!
    
    var animationOfView = Animation.getAnimation()
    
    private var buttonCounter = 1
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = "ggg"
        curveLabel.text = "easeInOut"
        forceLabel.text = String(2)
        durationLabel.text = String(1)
        delayLabel.text = String(0.3)
        
    }

    @IBAction func runAnimateButton(_ sender: UIButton) {
        switch buttonCounter {
        case 1:
            sender.setTitle(animationOfView.nameOfAnimation, for: .normal)
            applyAnimation()

            buttonCounter += 1
        case 2:
            sender.setTitle(animationOfView.nameOfAnimation, for: .normal)
            applyAnimation()
            buttonCounter += 1
        case 3:
            sender.setTitle(animationOfView.nameOfAnimation, for: .normal)
            applyAnimation()
            buttonCounter += 1
        case 4:
            sender.setTitle(animationOfView.nameOfAnimation, for: .normal)
            applyAnimation()
            buttonCounter += 1
        case 5:
            sender.setTitle(animationOfView.nameOfAnimation, for: .normal)
            applyAnimation()
            buttonCounter += 1
        default: break
    }
        


    
//    private func applyPopAnimation() {
//        animationView.animation = "pop"
//        animationView.curve = "easeInOut"
//        animationView.force = 2
//        animationView.duration = 1
//        animationView.delay = 0.3
//
//        animationLabel.text = "pop"
//        curveLabel.text = "easeInOut"
//        forceLabel.text = String(2)
//        durationLabel.text = String(1)
//        delayLabel.text = String(0.3)
//
//        animationView.animate()
//
//    }
//
//    private func applyShakeAnimation() {
//        animationView.animation = "shake"
//        animationView.curve = "easeInOut"
//        animationView.force = 2
//        animationView.duration = 1
//        animationView.delay = 0.3
//
//        animationLabel.text = "shake"
//        curveLabel.text = "easeInOut"
//        forceLabel.text = String(2)
//        durationLabel.text = String(1)
//        delayLabel.text = String(0.3)
//
//        animationView.animate()
//
//    }
//
//    private func applyWobbleAnimation() {
//        animationView.animation = "wobble"
//        animationView.curve = "easeIn"
//        animationView.force = 2
//        animationView.duration = 1
//        animationView.delay = 0.3
//
//        animationLabel.text = "wobble"
//        curveLabel.text = "easeIn"
//        forceLabel.text = String(2)
//        durationLabel.text = String(1)
//        delayLabel.text = String(0.3)
//
//        animationView.animate()
//
//    }
//
//    private func applyFlipYAnimation() {
//        animationView.animation = "flipY"
//        animationView.curve = "easeInOutBack"
//        animationView.force = 2
//        animationView.duration = 1
//        animationView.delay = 0.3
//
//        animationLabel.text = "flipY"
//        curveLabel.text = "easeInOutBAck"
//        forceLabel.text = String(2)
//        durationLabel.text = String(1)
//        delayLabel.text = String(0.3)
//
//        animationView.animate()
//
//    }
//
//    private func applySqueezeLeftAnimation() {
//        animationView.animation = "squeezeLeft"
//        animationView.curve = "easeOutCubic"
//        animationView.force = 2
//        animationView.duration = 1
//        animationView.delay = 0.3
//
//        animationLabel.text = "squeezeLeft"
//        curveLabel.text = "easeOutCubic"
//        forceLabel.text = String(2)
//        durationLabel.text = String(1)
//        delayLabel.text = String(0.3)
//
//        animationView.animate()
//
//    }
    }
        func applyAnimation() {
        animationView.animation = animationOfView.nameOfAnimation
        animationView.curve = animationOfView.nameOfCurve
        animationView.force = CGFloat(animationOfView.numberOfForce)
        animationView.duration = CGFloat(animationOfView.numberOfDuration)
        animationView.delay = CGFloat(animationOfView.numberOfDelay)
        
        animationLabel.text = animationView.animation
        curveLabel.text = animationView.curve
        forceLabel.text = String(format: "%.1f", Double(animationView.force))
        durationLabel.text = String(format: "%.1f", Double(animationView.duration))
        delayLabel.text = String(format: "%.1f", Double(animationView.delay))
            animationView.animate()
    }
    
    func applySecondAnimation() {
        animationView.animation = animationOfView.nameOfAnimation
        animationView.curve = animationOfView.nameOfCurve
        animationView.force = CGFloat(animationOfView.numberOfForce)
        animationView.duration = CGFloat(animationOfView.numberOfDuration)
        animationView.delay = CGFloat(animationOfView.numberOfDelay)
        
        animationLabel.text = animationView.animation
        curveLabel.text = animationView.curve
        forceLabel.text = String(format: "%.1f", Double(animationView.force))
        durationLabel.text = String(format: "%.1f", Double(animationView.duration))
        delayLabel.text = String(format: "%.1f", Double(animationView.delay))
            animationView.animate()
    }
}
