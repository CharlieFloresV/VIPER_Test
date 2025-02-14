//
//  ProductDetailInteractor.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import UIKit

class ProductDetailInteractor {
    //MARK: - Protocol Properties
    weak var presenter: ProductDetailPresenterProtocol?
}

//MARK: - Interactor Methods
extension ProductDetailInteractor: ProductDetailInteractorProtocol {
}
