//
//  DetailsVC.swift
//  BreakingBadBook
//
//  Created by Berke Demircan on 27.02.2025.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedBaddie : Baddies?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Capture of Selected Data
        
        nameLabel.text = selectedBaddie?.name
        jobLabel.text = selectedBaddie?.job
        imageView.image = selectedBaddie?.image
        
        
        
        
        
        
        
        
    }
    
}
