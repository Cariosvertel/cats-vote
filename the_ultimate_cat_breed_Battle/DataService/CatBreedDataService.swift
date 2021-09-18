//
//  CatBreedDataService.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 18/09/21.
//

import Foundation

class CatBreedDataService {
    static let instance:CatBreedDataService = CatBreedDataService()
    let apiKey = "7c5d7bd1-5615-43b8-bcd6-2694fe1280b0"
    
    func getCatBreeds(){
        
        guard let url:URL = URL(string: "https://api.thecatapi.com/v1/breeds") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue(apiKey, forHTTPHeaderField: "x-api-key")
        
        let task = URLSession.shared.dataTask(with: request){ data,response,error in
            
            guard let data = data, error == nil else {return}
            
            do{
                let decodeData : [CatBreed] = try JSONDecoder().decode([CatBreed].self, from: data)
                
                DispatchQueue.main.async {
                    print(decodeData[1].name)
                }
            }catch{
                
            }
        }
        task.resume()
    }
}