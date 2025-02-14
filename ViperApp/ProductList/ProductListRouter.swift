//
//  ProductListRouter.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import UIKit

/// Extend the Router with the `CreateModule` and `Routable` protocols to leverage the features these protocols provide within the Starter module.
class ProductListRouter {
    //MARK: - Protocol Properties
    weak var viewController: UIViewController?
    
    //MARK: - Static Methods
    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = ProductListViewController(nibName: nil, bundle: nil)
        let interactor = ProductListInteractor()
        let router = ProductListRouter()
        let presenter = ProductListPresenter(interface: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}

//MARK: - Router Metods
extension ProductListRouter: ProductListWireframeProtocol {
//    func goToDetail(from view: ProductListViewProtocol, with product: Product) {
//        let detailView = ProductDetailRouter.createModule()
//        if let newView = view as? UIViewController,
//           let navController = newView.navigationController {
//            navController.pushViewController(detailView, animated: true)
//        }
//    }
}

//MARK: - Private Methods
extension ProductListRouter {
}
