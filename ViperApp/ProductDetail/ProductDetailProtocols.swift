//
//  ProductDetailProtocols.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import Foundation

//MARK: View -
protocol ProductDetailViewProtocol: AnyObject {
    var presenter: ProductDetailPresenterProtocol?  { get set }
}

//MARK: Interactor -
protocol ProductDetailInteractorProtocol: AnyObject {
    var presenter: ProductDetailPresenterProtocol?  { get set }
}

//MARK: Presenter -
protocol ProductDetailPresenterProtocol: AnyObject {
}

//MARK: Wireframe -
protocol ProductDetailWireframeProtocol: AnyObject {
}
