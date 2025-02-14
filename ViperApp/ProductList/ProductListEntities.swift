//
//  ProductListEntities.swift
//  ViperApp
//
//  Created CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

struct Product: Decodable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
}
