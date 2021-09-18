//
//  CatBreedPresenter.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 18/09/21.
//

import Foundation

typealias CallbackBlock<T:Any> = (_ value: [T])->Void
typealias ErrorBlock = (_ error: Error)->Void

class CatBreedPresenter {
    static let instance: CatBreedPresenter = CatBreedPresenter()
    let catBreedDataService = CatBreedDataService.instance
    let converter:CatBreedUIConverter = CatBreedUIConverter.instance
    
    func getCatBreeds(onCompletion: @escaping CallbackBlock<UICatBreed>, onError: ErrorBlock?){
        catBreedDataService.getBreeds(onCompletion: {breeds in
            onCompletion(self.converter.convert(breeds))
        }, onError: onError)
    }
    
    
    
    
}
