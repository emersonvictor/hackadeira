//
//  PlantCardCell.swift
//  Hackadeira
//
//  Created by Emerson Victor on 09/11/19.
//  Copyright © 2019 hackadeira. All rights reserved.
//

import UIKit

class PlantCardCell: UICollectionViewCell {

    // MARK: - Propeties
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var commonName: UILabel!
    @IBOutlet var leafs: [UIImageView]!
    @IBOutlet weak var bgView: UIView!
    var status: Status! {
        didSet {
            switch self.status {
            case .green:
                print("green")
            case .yellow:
                print("yellow")
            case .red:
                print("red")
            case .none:
                print("none")
            }
        }
    }
    
    // MARK: - Initializer
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
