//
//  CatBreedUIConverter.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 18/09/21.
//

import Foundation

struct UICatBreed {
    let name:String
    let image:String
}

class CatBreedUIConverter {
    static let instance:CatBreedUIConverter = CatBreedUIConverter()
    
    func convert(_ catBreed: [CatBreed])-> [UICatBreed]{
        
        return catBreed.map({ catBreed in
            return convertCatBreed(catBreed)
        })
    
    }
    
    func convertCatBreed(_ catBreed: CatBreed)-> UICatBreed {
        let name = catBreed.name ?? ""
        let imageUrl = catBreed.image?.url ?? ""
        
        return UICatBreed(name: name, image: imageUrl)
        
    }
}
