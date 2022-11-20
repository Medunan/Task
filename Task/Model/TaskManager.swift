////
////  TaskManager.swift
////  Task
////
////  Created by Medunan  on 19/11/22.
////
//
//import Foundation
//
//struct TaskManager {
//    
//    
//    let baseURL = "https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
//    
//    mutating func getDetails() {
//        performRequest(urlString: baseURL)
//    }
//    
//    func performRequest(urlString: String) {
//        if let url = URL(string: urlString) {
//            let session = URLSession(configuration: .default)
//            let task = session.dataTask(with: url) { data, response, error in
//                if error != nil {
//                   
//                    return
//                }
//                
//                if let safeData = data {
//                    if let spec = self.parseJSON(byteData:safeData) {
//                        
//                    }
//                }
//            }
//            task.resume()
//        }
//    }
//    
//    func parseJSON(byteData: Data) -> ? {
//        let decoder = JSONDecoder()
//        do{
//            
//        }
//    }
//}
