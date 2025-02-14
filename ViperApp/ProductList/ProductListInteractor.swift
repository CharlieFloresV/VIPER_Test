//
//  ProductListInteractor.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import UIKit

class ProductListInteractor {
    //MARK: - Protocol Properties
    weak var presenter: ProductListPresenterProtocol?
    var remoteDataManager: RemoteDataManager?
    
    func fetchProducts() {
        RemoteDataManager.fetchProducts { result in
            switch result {
            case .success(let products):
                self.presenter?.didFetchProducts(products)
            case .failure(let error):
                self.presenter?.didFailToFetchProducts(error)
            }
        }
    }
}

//MARK: - Interactor Methods
extension ProductListInteractor: ProductListInteractorProtocol {
}
