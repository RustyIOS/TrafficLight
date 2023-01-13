//
//  ViewController.swift
//  TrafficLight
//
//  Created by Юрий Белов on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrentLight {
        case red, yellow, green
    }

    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    private var currentLight = CurrentLight.red
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1


    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
    }
    
    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
            currentLight = .red
        }
        
//        startButton.setTitle("NEXT", for: .normal)
//        redLight.alpha = 1
//        if redLight.alpha == 1 {
//            redLight.alpha = 0.3
//            yellowLight.alpha = 1
//        } else if yellowLight.alpha == 1 {
//            yellowLight.alpha = 0.3
//            greenLight.alpha = 1
//        } else if greenLight.alpha == 1 {
//            greenLight.alpha = 0.3
//            redLight.alpha = 1
//        }
        
    
    }
    

}

