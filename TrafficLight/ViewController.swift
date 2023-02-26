//
//  ViewController.swift
//  TrafficLight
//
//  Created by Степан on 23.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var threeView: [UIView]!
    
    @IBOutlet weak var startButton: UIButton!
//        var startButton = UIButton()
//
//        startButton.backgroundColor = .black
//        startButton.setTitle("Just", for: .normal)
//        startButton.setTitleColor(.white, for: .normal)
//        startButton.translatesAutoresizingMaskIntoConstraints = false
//
//        return startButton
//    }()
    
    var downButton: UIButton! = {
        var downButton = UIButton()
        
        downButton.backgroundColor = .black
        downButton.setTitle("Just", for: .normal)
        downButton.setTitleColor(.white, for: .normal)
        downButton.translatesAutoresizingMaskIntoConstraints = false
        downButton.titleLabel?.font = UIFont(name: "Noteworthy", size: 25) /// SIZE OF LABEL AND ITS NAME
        downButton.layer.cornerRadius = 15
        
//        downButton.frame = CGRect(x: 300, y: 500, width: 100, height: 100) NOT WORKING
        
        return downButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for i in threeView {
//            i.alpha = 0.3
//            i.layer.cornerRadius = 50
//        }
        threeView[0].alpha = 0.3
        view.addSubview(downButton)
        addCons()
    }
    
    func addCons() {
        var cons = [NSLayoutConstraint]()
        /// Add
        cons.append(downButton.centerXAnchor.constraint(equalTo:
                                                            view.safeAreaLayoutGuide.trailingAnchor, constant: -220)) /// X AXIS RIGHT (X AXIS MAY ONLY HAVE  "leftAnchor" and "rightAnchor"))
        
        cons.append(downButton.centerYAnchor.constraint(equalTo:                                               view.safeAreaLayoutGuide.bottomAnchor, constant: -200)) /// Y AXIS BOTTOM (Y AXIS MAY ONLY HAVE  "bottomAnchor" and "TopAnchor")
        
        cons.append(downButton.widthAnchor.constraint(equalToConstant: 100)) /// WIDTH OF BUTTON
        cons.append(downButton.heightAnchor.constraint(equalToConstant: 50)) /// HEIGHT BUTTON
        /// Activate
        NSLayoutConstraint.activate(cons)
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        switch threeView[0] {
        case threeView[0]:
            threeView[0].alpha = 1
        default:
            threeView[0].alpha = 0
        }
    }
}

