//
//  ViewController.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 17/09/21.
//

import UIKit

class CatBreedViewController: UIViewController {
    @IBOutlet weak var catBreedImage: UIImageView!
    @IBOutlet weak var catBreedName: UILabel!
    let dataServiceTest = CatBreedDataService.instance
    override func viewDidLoad() {
        super.viewDidLoad()
        dataServiceTest.getCatBreeds()
    }
    
    @IBAction func didTapLikeCatBreed(_ sender: UIButton) {
    }
    @IBAction func didTapDislikeCatBreed(_ sender: UIButton) {
    }
    @IBAction func didTapBreedsList(_ sender: UIButton) {
        guard let toBreedListVC = storyboard?.instantiateViewController(identifier: "BreedListVC") else {return}
        navigationController?.pushViewController(toBreedListVC, animated: true)
    }
    
    
}
