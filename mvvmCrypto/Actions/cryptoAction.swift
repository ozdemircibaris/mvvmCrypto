//
//  cryptoAction.swift
//  mvvmCrypto
//
//  Created by Baris Ozdemirci on 16.11.2020.
//

import Foundation

class WebService {
    
    func fetchCurrencies(url: URL, completion: @escaping ([CryptoModel]?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let cryptoList = try? JSONDecoder().decode([CryptoModel].self, from: data)
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
            }
        }.resume()
    }
}
