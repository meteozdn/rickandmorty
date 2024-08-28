//
//  EpisodesViewController.swift
//  rickandmorty
//
//  Created by Metehan Özden on 27.08.2024.
//

import UIKit

class EpisodesViewController: UIViewController {

    @IBOutlet weak var episodeCharacterTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setInit()
    }
    
    private func setInit(){
        
        episodeCharacterTable.register(UINib(nibName: K.episodeCellNibName, bundle: nil), forCellReuseIdentifier: K.episodeCell)
        episodeCharacterTable.dataSource = self
        episodeCharacterTable.delegate = self
    }
    

    


}




// MARK: UITableViewDataSource
extension EpisodesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.episodeCell, for: indexPath) as! EpisodeCell
        return cell
    }
    
}


extension EpisodesViewController: UITableViewDelegate{
    
}
