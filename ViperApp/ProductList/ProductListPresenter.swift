//
//  ProductListPresenter.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import UIKit

class ProductListPresenter {
    //MARK: - Protocol Properties
    weak private var view: ProductListViewProtocol?
    var interactor: ProductListInteractorProtocol?
    private let router: ProductListWireframeProtocol

    //MARK: - Life Cycle
    init(interface: ProductListViewProtocol, interactor: ProductListInteractorProtocol?, router: ProductListWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

//MARK: - Presenter Methods
extension ProductListPresenter: ProductListPresenterProtocol {
    func viewDidLoad() {
        self.interactor?.fetchProducts()
    }
    func didFetchProducts(_ products: [Product]) {
        view?.updateView(with: products)
    }
    func didFailToFetchProducts(_ error: Error) {
        print("Error fetching products: \(error.localizedDescription)")
    }
}

//MARK: - Private Methods
extension ProductListPresenter {
}
