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
                for imageView in self.leafs {
                    imageView.image = UIImage(named: "green-leaf")
                }
            case .yellow:
                for imageView in self.leafs {
                    imageView.image = UIImage(named: "gray-leaf")
                }
                
                self.leafs[1].image = UIImage(named: "yellow-leaf")
                self.leafs[0].image = UIImage(named: "yellow-leaf")
            case .red:
                for imageView in self.leafs {
                    imageView.image = UIImage(named: "gray-leaf")
                }
                
                self.leafs[1].image = UIImage(named: "red-leaf")
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
