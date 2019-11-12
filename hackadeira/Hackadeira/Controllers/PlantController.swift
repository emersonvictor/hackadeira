//
//  PlantController.swift
//  Hackadeira
//
//  Created by Emerson Victor on 09/11/19.
//  Copyright © 2019 hackadeira. All rights reserved.
//

import UIKit
import SocketIO

class PlantController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var commonName: UILabel!
    @IBOutlet weak var lastWater: UILabel!
    @IBOutlet weak var soilHumidity: UILabel!
    @IBOutlet weak var airHumidity: UILabel!
    @IBOutlet weak var airTemperature: UILabel!
    @IBOutlet weak var luminosity: UILabel!
    let manager = SocketManager(socketURL: URL(string: "http://10.0.202.11:1880")!,
                                      config: [.log(true), .compress])
    var socket: SocketIOClient!
    
    
    // MARK: - Initializer
    override func viewDidLoad() {
        super.viewDidLoad()
        self.socket = manager.defaultSocket
        self.addHandlers()
        self.socket.connect()
        
        let plant = MockData.plants[0]
        self.nickname.text = plant.nickname
        self.commonName.text = plant.commonName
//        self.scientificName.text = plant.scientificName
        self.lastWater.text = "\(plant.waterLog.last!)"
        self.soilHumidity.text = String(plant.soilHumidity)
        self.airHumidity.text = "\(plant.airHumidity)"
        self.airTemperature.text = "\(plant.airTemperature)"
        self.luminosity.text = plant.luminosity
    }
    
    // MARK: - IOT connections
    @IBAction func coverPlant() {
        let coverLink = URL(string: "http://10.0.202.11:1880/move/10")
        let task = URLSession.shared.dataTask(with: coverLink!) { (_) in }
        
        task.resume()
        
        // Stop repeated movement
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (_) in
            let coverLink = URL(string: "http://10.0.202.11:1880/move/0")
            let task = URLSession.shared.dataTask(with: coverLink!) { (_) in }
            
            task.resume()
        }
    }
    
    func addHandlers() {
        self.socket.on("light") {[weak self] data, ack in
            if data[0] as! Int == 0 {
                self?.luminosity.text = "Escuro"
            } else {
                self?.luminosity.text = "Claro"
            }
            
            return
        }
        
        self.socket.on("temp") {[weak self] data, ack in
            self?.airTemperature.text = data[0] as? String
            return
        }
    }
}
