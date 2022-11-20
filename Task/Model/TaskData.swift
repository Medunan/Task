//
//  NetworkManager.swift
//  Task
//
//  Created by Medunan  on 19/11/22.
//

import UIKit

struct Data: Codable {
    
    
    let brand: String
    let name: String
    let price: Int
    let ecom: [Ecom]
    
    
}

struct Ecom : Codable {
    let name: String
    let brand: String
    let price: Double
}


