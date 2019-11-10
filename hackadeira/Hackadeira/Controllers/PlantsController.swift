//
//  PlantsController.swift
//  hackadeira
//
//  Created by Emerson Victor on 09/11/19.
//  Copyright © 2019 hackadeira. All rights reserved.
//

import UIKit

class PlantsController: UIViewController {

    // MARK: - Properties
    let searchController = UISearchController(searchResultsController: nil)
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - View cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation controller
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.searchController = self.searchController
        self.searchController.searchResultsUpdater = self
        self.searchController.searchBar.placeholder = "Pesquise sua planta"
        self.definesPresentationContext = true
        
        // Collection view
        self.collectionView.register(UINib(nibName: "PlantCardCell", bundle: nil), forCellWithReuseIdentifier: "PlantCardCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
}

extension PlantsController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
    }
}

extension PlantsController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MockData.plants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlantCardCell", for: indexPath) as! PlantCardCell
        let plant = MockData.plants[indexPath.row]

        // Set properties
        cell.commonName.text = plant.commonName
        cell.nickname.text = plant.nickname
        cell.status = plant.status
        cell.image.image = UIImage(named: plant.imageNamed)
        cell.contentView.layer.cornerRadius = 15
        cell.contentView.layer.masksToBounds = true
        cell.layer.masksToBounds = false
        cell.layer.shadowOffset = CGSize(width: 1, height: 1)
        cell.layer.shadowRadius = 8
        cell.layer.shadowOpacity = 0.2
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "PlantDetail", sender: nil)
    }
}

