//
//  CryptoTableViewCell.swift
//  mvvmCrypto
//
//  Created by Baris Ozdemirci on 16.11.2020.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {

    @IBOutlet weak var currencyInput: UILabel!
    @IBOutlet weak var priceInput: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
