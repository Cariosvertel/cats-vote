//
//  BreedInfoTableViewCell.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 18/09/21.
//

import UIKit

class VotingRecordTableViewCell: UITableViewCell {
    
    static let nib = UINib(nibName: "VotingRecordTableViewCell", bundle: nil)
    static let identifier = "VotingRecordVC"
    
    @IBOutlet weak var breedName: UILabel!
    @IBOutlet weak var voteDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    //date format:MMM d, h:mm a
    func setUIVotingRecord(_ catBreed: UICatBreed){
        breedName.text = catBreed.name
        print("la fecha que sale es \(catBreed.voteDate)")
        voteDate.text = catBreed.voteDate
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension VotingRecordTableViewCell {
    
    
}
