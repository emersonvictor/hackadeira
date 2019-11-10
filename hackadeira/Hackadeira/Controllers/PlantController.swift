//
//  PlantController.swift
//  Hackadeira
//
//  Created by Emerson Victor on 09/11/19.
//  Copyright © 2019 hackadeira. All rights reserved.
//

import UIKit

class PlantController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var commonName: UILabel!
    @IBOutlet weak var scientificName: UILabel!
    @IBOutlet weak var lastWater: UILabel!
    @IBOutlet weak var soilHumidity: UILabel!
    @IBOutlet weak var airHumidity: UILabel!
    @IBOutlet weak var airTemperature: UILabel!
    @IBOutlet weak var luminosity: UILabel!
    
    
    // MARK: - Initializer
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let plant = MockData.plants[0]
        self.nickname.text = plant.nickname
        self.commonName.text = plant.commonName
        self.scientificName.text = plant.scientificName
        self.lastWater.text = "\(plant.waterLog.last!)"
        self.soilHumidity.text = String(plant.soilHumidity)
        self.airHumidity.text = "\(plant.airHumidity)"
        self.airTemperature.text = "\(plant.airTemperature)"
        self.luminosity.text = plant.luminosity
    }
    
    // MARK: - IOT connections
}
