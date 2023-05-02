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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let radiusCircleView = redView.frame.size.width / 2
        // setup circle form for view
        redView.layer.cornerRadius = radiusCircleView
//        redView.clipsToBounds = true
//        yellowView.layer.cornerRadius = radiusCircleView
//        yellowView.clipsToBounds = true
//        greenView.layer.cornerRadius = radiusCircleView
//        greenView.clipsToBounds = true
        // setup alpha for view
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        buttonRefrashLight.setTitle("START", for: .normal)
        buttonRefrashLight.layer.cornerRadius = 10
    }

    @IBAction func buttonUpdate() {
        if redView.alpha == 1 {
            yellowView.alpha = 1
            redView.alpha = 0.3
        } else if yellowView.alpha == 1 {
            greenView.alpha = 1
            yellowView.alpha = 0.3
        } else if greenView.alpha == 1 {
            redView.alpha = 1
            greenView.alpha = 0.3
        } else {
            redView.alpha = 1
        }
        buttonRefrashLight.setTitle("NEXT", for: .normal)
    }
    
}

