//
//  ViewController.swift
//  FCM_Example
//
//  Created by test on 02/05/2018.
//  Copyright © 2018 Grey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white

        view.addSubview(infoLabel)
        infoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        infoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
    }

    public func setLabel(_ message: String) {
        var text = infoLabel.text ?? ""
        text += message
        infoLabel.text = "\\\\ " + message
    }
}

