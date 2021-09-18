//
//  BreedInfoViewController.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 18/09/21.
//

import UIKit

class BreedInfoViewController: UIViewController {

    @IBOutlet weak var breedNameLabel: UILabel!
    @IBOutlet weak var breedInfoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        breedInfoTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
   
    @IBAction func didTapGoBack(_ sender: UIButton) {
    }
    

}

extension BreedInfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BreedInfoTableViewCell.identifier, for: indexPath)
        return cell
    }
    
    
}
