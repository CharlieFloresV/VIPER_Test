//
//  MyViewController.swift
//  ViperApp
//
//  Created by CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import UIKit

class MyViewController: UIViewController {
    private var myButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Test VIPER", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.commonInit()
    }
}

//MARK: - Private Methods
extension MyViewController {
    private func commonInit() {
        self.setUp()
        self.setupConstraints()
    }
    /// Method to configure view
    private func setUp() {
        self.view.backgroundColor = .blue
        self.myButton.backgroundColor = .red
        self.myButton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
    }
    /// Method to add views and configure their constraints
    private func setupConstraints() {
        self.view.addSubview(self.myButton)
        
        NSLayoutConstraint.activate([
            self.myButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.myButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.myButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            self.myButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
            self.myButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

//MARK: - @objc Methods
extension MyViewController {
    @objc func buttonTapped() {
        print("¡Probando VIPER!")
    }
}
