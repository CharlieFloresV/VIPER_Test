//
//  ProductDetailViewController.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import UIKit

class ProductDetailViewController: UIViewController {
    //MARK: - Protocol Properties
    var presenter: ProductDetailPresenterProtocol?
    
    //MARK: - Properties
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.commonInit()
    }
}

//MARK: - Public Methods
extension ProductDetailViewController {
}

//MARK: - Private Methods
extension ProductDetailViewController {
    private func commonInit() {
        self.setUp()
        self.setupConstraints()
    }
    /// Method to configure view
    private func setUp() {
        self.titleLabel.text = "Hola"
        self.priceLabel.text = "Mundo"
        self.view.backgroundColor = .white
        self.view.addSubview(self.titleLabel)
        self.view.addSubview(self.priceLabel)
    }
    /// Method to add views and configure their constraints
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            priceLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            priceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

//MARK: - View Methods
extension ProductDetailViewController: ProductDetailViewProtocol {
}
