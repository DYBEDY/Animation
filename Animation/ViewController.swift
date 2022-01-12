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
        animationLabel.text = "pop"
        curveLabel.text = "easeInOut"
        forceLabel.text = String(2)
        durationLabel.text = String(1)
        delayLabel.text = String(0.3)
        
    }

    @IBAction func runAnimateButton(_ sender: UIButton) {
        applyAnimation()
    }
    
    func applyAnimation() {
        animationButton.setTitle(animationOfView.nameOfAnimation, for: .normal)
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
        animationOfView = Animation.getAnimation()
    }
}
