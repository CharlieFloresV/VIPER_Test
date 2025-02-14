//
//  ProductListProtocols.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import Foundation

//MARK: View -
protocol ProductListViewProtocol: AnyObject {
    var presenter: ProductListPresenterProtocol?  { get set }
    func updateView(with products: [Product])
}

//MARK: Interactor -
protocol ProductListInteractorProtocol: AnyObject {
    var presenter: ProductListPresenterProtocol?  { get set }
    func fetchProducts()
}

//MARK: Presenter -
protocol ProductListPresenterProtocol: AnyObject {
    func viewDidLoad()
    func didFetchProducts(_ products: [Product])
    func didFailToFetchProducts(_ error: Error)
}

//MARK: Wireframe -
protocol ProductListWireframeProtocol: AnyObject {
}
