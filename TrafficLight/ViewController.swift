//
//  ViewController.swift
//  TrafficLight
//
//  Created by Дмитрий on 02.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var buttonRefrashLight: UIButton!
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // setup alpha for view
        redView.alpha = lightOff
        yellowView.alpha = lightOff
        greenView.alpha = lightOff
        
//        redView.layer.cornerRadius = redView.frame.width / 2
//        yellowView.layer.cornerRadius = redView.frame.width / 2
//        greenView.layer.cornerRadius = redView.frame.width / 2
        
        
        
        buttonRefrashLight.setTitle("START", for: .normal)
        buttonRefrashLight.layer.cornerRadius = 10
    }
    override func viewWillLayoutSubviews() {
        // setup circle form for view
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = redView.frame.width / 2
        greenView.layer.cornerRadius = redView.frame.width / 2
    }
    @IBAction func buttonUpdate() {
        if redView.alpha == lightOn {
            yellowView.alpha = lightOn
            redView.alpha = lightOff
        } else if yellowView.alpha == lightOn {
            greenView.alpha = lightOn
            yellowView.alpha = lightOff
        } else if greenView.alpha == lightOn {
            redView.alpha = lightOn
            greenView.alpha = lightOff
        } else {
            redView.alpha = lightOn
        }
        buttonRefrashLight.setTitle("NEXT", for: .normal)
    }
    
}

