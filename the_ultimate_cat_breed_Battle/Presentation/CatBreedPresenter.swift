//
//  CatBreedPresenter.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 18/09/21.
//

import Foundation

typealias CallbackBlock<T:Any> = (_ value: [T])->Void
typealias ErrorBlock = (_ error: Error)->Void

struct CatBreedProgressStatus:Codable{
    var currentIndex:Int = 0
    var breeds:[UICatBreed] = []
}


class CatBreedPresenter {
    static let instance: CatBreedPresenter = CatBreedPresenter()
    let catBreedDataService = CatBreedDataService.instance
    let converter:CatBreedUIConverter = CatBreedUIConverter.instance
//    let currentIndex = 0
    var catBreedProgressStatus = CatBreedProgressStatus()
    
    func getCatBreeds(onCompletion: @escaping CallbackBlock<UICatBreed>, onError: ErrorBlock?){
        /*
        if isAvailableSession(){
            let localBreeds = getLocalBreeds()
            onCompletion(localBreeds)
            return
        }
        */
        catBreedDataService.getBreeds(onCompletion: {breeds in
            
            self.catBreedProgressStatus.breeds = self.converter.convert(breeds)
            onCompletion(self.converter.convert(breeds))
            print("on presenter\(self.catBreedProgressStatus.breeds.count)")
            
        }, onError: onError)
    }
    
    func isNotTheLastBreed() -> Bool{
        let currentIndex = catBreedProgressStatus.currentIndex
        let catBreedCount = catBreedProgressStatus.breeds.count
        let isNotTheLastBreed = currentIndex < catBreedCount - 1
        
        if isNotTheLastBreed {
            catBreedProgressStatus.currentIndex += 1
            return true
        }else {
            return false
        }
        
    }
    
    
    /*
    func isAvailableSession()->Bool{
        
        return currentIndex == null
    }
    */

    
    
    
    
}
