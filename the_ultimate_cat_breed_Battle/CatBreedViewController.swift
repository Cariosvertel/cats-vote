//
//  ViewController.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 17/09/21.
//

import UIKit

class CatBreedViewController: UIViewController {
    
    var catBreeds:[UICatBreed] = []
    var currentBreedIndex = 0
    
    @IBOutlet weak var catBreedImage: UIImageView!
    @IBOutlet weak var catBreedName: UILabel!
    let presenter = CatBreedPresenter.instance
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.getCatBreeds(onCompletion: { uiCatBreed in
            print(uiCatBreed[10].name)
            self.catBreeds = uiCatBreed
            self.catBreedName.text = uiCatBreed[self.currentBreedIndex].name
            
        }, onError: {error in})
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    @IBAction func didTapLikeCatBreed(_ sender: UIButton) {
        showTheNextBreed()
    }
    @IBAction func didTapDislikeCatBreed(_ sender: UIButton) {
    }
    @IBAction func didTapBreedsList(_ sender: UIButton) {
        guard let toBreedListVC = (storyboard?.instantiateViewController(identifier: "BreedListVC")) as? BreedListViewController else {return}
        toBreedListVC.catBreeds = catBreeds
        navigationController?.pushViewController(toBreedListVC, animated: true)
    }
    
    
}

extension CatBreedViewController{
    
    func showTheNextBreed(){
        let isNotTheLastBreed = currentBreedIndex < catBreeds.count - 1
        
        if isNotTheLastBreed{
            currentBreedIndex += 1
            catBreedName.text = catBreeds[currentBreedIndex].name
        }
        
    }
}
