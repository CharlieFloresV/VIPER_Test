//
//  ProductDetailPresenter.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import UIKit

class ProductDetailPresenter {
    //MARK: - Protocol Properties
    weak private var view: ProductDetailViewProtocol?
    var interactor: ProductDetailInteractorProtocol?
    private let router: ProductDetailWireframeProtocol

    //MARK: - Life Cycle
    init(interface: ProductDetailViewProtocol, interactor: ProductDetailInteractorProtocol?, router: ProductDetailWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

//MARK: - Presenter Methods
extension ProductDetailPresenter: ProductDetailPresenterProtocol {
}

//MARK: - Private Methods
extension ProductDetailPresenter {
}
