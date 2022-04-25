//
//  ViewController.swift
//  StackViewApp
//
//  Created by Trevor Beaton on 4/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundView = BackgroundView()
    let signInButton = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension ViewController {
    
    private func style() {
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.configuration = .filled()
        signInButton.configuration?.imagePadding = 8 // for indicator spacing
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
    }
    
    // X = Horizontal / Y = Vertical
    // Leading = Front
    // Trailing = Back
    
    private func layout() {
        view.addSubview(backgroundView)
        view.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            backgroundView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            backgroundView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: backgroundView.trailingAnchor, multiplier: 1),
            
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: backgroundView.bottomAnchor, multiplier: 2),
            signInButton.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor)
            
            
        ])
    }
    
}

extension ViewController {
    @objc func signInTapped(sender: UIButton) {
        
    }
}
