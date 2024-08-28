//
//  CharactersViewController.swift
//  rickandmorty
//
//  Created by Metehan Özden on 27.08.2024.
//

import UIKit

class CharactersViewController: UIViewController ,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInit()
    }
 
    private func setInit(){
 
        collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: K.characterCellNibName, bundle: nil), forCellWithReuseIdentifier: K.characterCell  )
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let numberOfItemsPerRow: CGFloat = 2
            let spacingBetweenItems: CGFloat = 10

            let totalSpacing = (2 * layout.sectionInset.left) + ((numberOfItemsPerRow - 1) * spacingBetweenItems)
            let itemWidth = (collectionView.bounds.width - totalSpacing) / numberOfItemsPerRow
            
            layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
            layout.minimumInteritemSpacing = spacingBetweenItems
            layout.minimumLineSpacing = spacingBetweenItems
        }
        
        
    }
    
}


extension CharactersViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.characterCell, for: indexPath) as! CharacterCell
        
        return cell
    }
    
    
}
