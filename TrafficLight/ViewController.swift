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
    
    var view1: UIView! = {
        var view1 = UIView()
        view1.backgroundColor = .gray
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.alpha = 1
        return view1
    }()
    
    var view2: UIView! = {
        var view2 = UIView()
        view2.backgroundColor = .systemBlue
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.alpha = 1
        return view2
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for i in threeView {
//            i.alpha = 0.3
//            i.layer.cornerRadius = 50
//        }
        threeView[0].alpha = 0.3
        view.addSubview(downButton)
        view.addSubview(view1)
        view.addSubview(view2)
        addCons()
        startButton.layer.cornerRadius = 10
    }
    
    func addCons() {
        var cons = [NSLayoutConstraint]()
        /// Add
        cons.append(downButton.centerXAnchor.constraint(equalTo:
                                                            view.safeAreaLayoutGuide.trailingAnchor, constant: -220)) /// X AXIS RIGHT (X AXIS MAY ONLY HAVE  "leftAnchor" and "rightAnchor"))
        
        cons.append(downButton.centerYAnchor.constraint(equalTo:                                               view.safeAreaLayoutGuide.bottomAnchor, constant: -200)) /// Y AXIS BOTTOM (Y AXIS MAY ONLY HAVE  "bottomAnchor" and "TopAnchor")
        
        cons.append(downButton.widthAnchor.constraint(equalToConstant: 100)) /// WIDTH OF BUTTON
        cons.append(downButton.heightAnchor.constraint(equalToConstant: 50)) /// HEIGHT BUTTON
        
        /// Setting View (GRAY)
        
        cons.append(view1.widthAnchor.constraint(equalToConstant: 200))
        cons.append(view1.heightAnchor.constraint(equalToConstant: 150))

        cons.append(view1.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -100))
        
        cons.append(view1.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 200))
        
        /// SETTING VIEW (BLUE)
        
        cons.append(view2.widthAnchor.constraint(equalToConstant: 200))
        cons.append(view2.heightAnchor.constraint(equalToConstant: 150))

        cons.append(view2.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 25))
        
        cons.append(view2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200))
        
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

