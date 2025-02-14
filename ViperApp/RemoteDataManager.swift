//
//  RemoteDataManager.swift
//  ViperApp
//
//  Created by CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import Foundation

class Auth {
    func login() {
        RemoteDataManager.fetchProducts(completion: <#T##(Result<[Product], any Error>) -> Void#>)
    }
}

class Enterteinment {
    func images() {
        RemoteDataManager.fetchProducts(completion: <#T##(Result<[Product], any Error>) -> Void#>)
    }
}

class RemoteDataManager {
    static func fetchProducts(completion: @escaping (Result<[Product], Error>) -> Void) {
        guard let url = URL(string: "https://fakestoreapi.com/products") else {
            completion(.failure(NSError(domain: "Invalid URL", code: 400, userInfo: nil)))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data", code: 500, userInfo: nil)))
                return
            }
            
            do {
                let decodedProducts = try JSONDecoder().decode([Product].self, from: data)
                completion(.success(decodedProducts))
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
