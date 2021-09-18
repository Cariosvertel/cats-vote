//
//  BreedListTableViewCell.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 18/09/21.
//

import UIKit

class BreedListTableViewCell: UITableViewCell {

    static let nib: UINib = UINib(nibName: "BreedListTableViewCell", bundle: nil)
    static let identifier = "BreedListVC"
    
    @IBOutlet weak var catBreedName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setUICatBreed(_ catBreed: UICatBreed){
        catBreedName.text = catBreed.name
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
