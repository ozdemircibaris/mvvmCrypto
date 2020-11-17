//
//  cryptoViewModel.swift
//  mvvmCrypto
//
//  Created by Baris Ozdemirci on 17.11.2020.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoModel];
}

extension CryptoListViewModel {
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count;
    }
    
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index];
        return CryptoViewModel(cryptoCurrency: crypto)
    }

}

struct CryptoViewModel {
    let cryptoCurrency : CryptoModel;
}

extension CryptoViewModel {
    var name : String {
        return self.cryptoCurrency.currency;
    }
    var price : String {
        return self.cryptoCurrency.price;
    }
}
