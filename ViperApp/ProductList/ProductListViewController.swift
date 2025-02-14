//
//  ProductListViewController.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import UIKit

class ProductListViewController: UIViewController {
    //MARK: - Protocol Properties
	var presenter: ProductListPresenterProtocol?

    //MARK: - Properties
    private var products: [Product] = []
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    //MARK: - Life Cycle
	override func viewDidLoad() {
        super.viewDidLoad()
        self.commonInit()
        self.presenter?.viewDidLoad()
    }
}

//MARK: - Private Methods
extension ProductListViewController {
    private func commonInit() {
        self.setUp()
        self.setupConstraints()
    }
    /// Method to configure view
    private func setUp() {
        self.view.backgroundColor = .white
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ProductCell")
        
    }
    /// Method to add views and configure their constraints
    private func setupConstraints() {
        self.view.addSubview(self.tableView)
        
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: view.topAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            self.tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
}

//MARK: - TableView Delegate & DataSource
extension ProductListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        let product = products[indexPath.row]
        cell.textLabel?.text = product.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedProduct = products[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        print("selectedProduct: ", selectedProduct)
    }
}

//MARK: - View Methods
extension ProductListViewController: ProductListViewProtocol {
    func updateView(with products: [Product]) {
        DispatchQueue.main.async {
            self.products = products
            self.tableView.reloadData()
        }
    }
}
