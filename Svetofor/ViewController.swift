//
//  ViewController.swift
//  Svetofor
//
//  Created by Вадим Ардуанов on 04.06.2023.
//

import UIKit

enum ColorNow {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var colorNow = ColorNow.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        startButton.layer.cornerRadius = 5
        redView.layer.cornerRadius = redView.frame.size.width/2
        yellowView.layer.cornerRadius = yellowView.frame.size.width/2
        greenView.layer.cornerRadius = greenView.frame.size.width/2
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)

    
    
    switch colorNow {
    case .red:
        redView.alpha = 1
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        colorNow = .yellow
    case .yellow:
        redView.alpha = 0.3
        yellowView.alpha = 1
        greenView.alpha = 0.3
        colorNow = .green
    case .green:
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 1
        colorNow = .red
    }
}
}



