//
//  ListOfBreedsViewController.swift
//  the_ultimate_cat_breed_Battle
//
//  Created by danielapps on 18/09/21.
//

import UIKit

class BreedListViewController: UIViewController {

    @IBOutlet weak var breedListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        breedListTableView.dataSource = self
        breedListTableView.register(BreedListTableViewCell.nib, forCellReuseIdentifier: BreedListTableViewCell.identifier)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapGoBackToVote(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    

}

extension BreedListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BreedListTableViewCell.identifier, for: indexPath)
        return cell
    }
    
    
}