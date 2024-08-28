//
//  LocationsViewController.swift
//  rickandmorty
//
//  Created by Metehan Özden on 27.08.2024.
//

import UIKit

class LocationsViewController: UIViewController {

    
    @IBOutlet weak var locationsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInit()
    }
    
    private func setInit(){
        locationsTable.register(UINib(nibName: K.locationCellNibName, bundle: nil), forCellReuseIdentifier: K.locationCell)
        locationsTable.delegate = self
        locationsTable.dataSource = self
    }


}



extension LocationsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.locationCell, for: indexPath) as! LocationCell
        cell.backgroundColor = UIColor.white
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        cell.frame = cell.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))



        return cell
    }
    
    
}


extension LocationsViewController: UITableViewDelegate{
    
}
