//
//  ProductDetailRouter.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import UIKit

/// Extend the Router with the `CreateModule` and `Routable` protocols to leverage the features these protocols provide within the Starter module.
class ProductDetailRouter {
    //MARK: - Protocol Properties
    weak var viewController: UIViewController?
    
    //MARK: - Static Methods
    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = ProductDetailViewController(nibName: nil, bundle: nil)
        let interactor = ProductDetailInteractor()
        let router = ProductDetailRouter()
        let presenter = ProductDetailPresenter(interface: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}

//MARK: - Router Metods
extension ProductDetailRouter: ProductDetailWireframeProtocol {
}

//MARK: - Private Methods
extension ProductDetailRouter {
}
