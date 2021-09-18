//
//  ViewController.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 17/09/21.
//

import UIKit
//TODO: rename to BreedVoterViewController


class CatBreedViewController: UIViewController {
    
    var catBreeds:[UICatBreed] = []
    var currentBreedIndex = 0
    
    @IBOutlet weak var loading: UIActivityIndicatorView!
    @IBOutlet weak var catBreedImage: UIImageView!
    @IBOutlet weak var catBreedName: UILabel!
    let presenter = CatBreedPresenter.instance
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: show spinning indicator and put breedProgress in closure below
        loading.startAnimating()
        presenter.getCatBreeds(onCompletion: { uiCatBreed in
            // response
            self.loading.stopAnimating()
            //TODO: Stop spinning indicator
            print(uiCatBreed[10].name)
            self.catBreeds = uiCatBreed
            self.catBreedName.text = uiCatBreed[self.presenter.currentIndex].name
            
        }, onError: {error in
            //TODO: show any error with UIAlertViewController
            
        })
     
        
    }
    
   
    
    @IBAction func didTapLikeCatBreed(_ sender: UIButton) {
        //TODO: Add like to breed here. Same in local persistency
//        let userDidPressLike = sender.tag == 1

        /*
        let vote = catBreeds[currentBreedIndex]
        vote.isLike = userDidPressLike
        presenter.saveVote(vote)
        */

        showTheNextBreed()
    }
    @IBAction func didTapDislikeCatBreed(_ sender: UIButton) {
        
        
    }
    @IBAction func didTapBreedsList(_ sender: UIButton) {
        guard let toBreedListVC = (storyboard?.instantiateViewController(identifier: "BreedListVC")) as? BreedListViewController else {return}
        toBreedListVC.catBreeds = catBreeds
        navigationController?.pushViewController(toBreedListVC, animated: true)
    }
    @IBAction func didTapVotingRecord(_ sender: UIButton) {
        guard let toVotingRecord = (storyboard?.instantiateViewController(identifier: "VotingRecordVC")) as? VotingRecordViewController else {return}
        toVotingRecord.catBreeds = catBreeds
        navigationController?.present(toVotingRecord, animated: true, completion: nil)
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
