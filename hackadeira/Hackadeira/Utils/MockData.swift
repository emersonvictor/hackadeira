//
//  MockData.swift
//  Hackadeira
//
//  Created by Emerson Victor on 09/11/19.
//  Copyright © 2019 hackadeira. All rights reserved.
//

import Foundation

class MockData {
    
    static let plants: [Plant] = [
        Plant(imageNamed: "papoula",
              boughtAt: Date(),
              scientificName: "Papaver rhoeas",
              commonName: "Papoula",
              nickname: "Rosana",
              description: "Planta",
              minTemperature: 0,
              maxTemperature: 0,
              minHumidity: 0,
              maxHumidity: 0,
              status: .green),
        Plant(imageNamed: "samambaia",
              boughtAt: Date(),
              scientificName: "Nephrolepis sp.",
              commonName: "Samambaia",
              nickname: "Samantha",
              description: "Planta",
              minTemperature: 0,
              maxTemperature: 0,
              minHumidity: 0,
              maxHumidity: 0,
              status: .yellow),
        Plant(imageNamed: "zebra",
              boughtAt: Date(),
              scientificName: "Haworthia fasciata",
              commonName: "Zebra",
              nickname: "Marty",
              description: "Planta",
              minTemperature: 0,
              maxTemperature: 0,
              minHumidity: 0,
              maxHumidity: 0,
              status: .red),
        Plant(imageNamed: "paubrasil",
              boughtAt: Date(),
              scientificName: "Paubrasilia echinata",
              commonName: "Pau-Brasil",
              nickname: "Cabral",
              description: "Planta",
              minTemperature: 0,
              maxTemperature: 0,
              minHumidity: 0,
              maxHumidity: 0,
              status: .green)
    ]
}
