//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Berke Demircan on 26.02.2025.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    //Connecting Objects
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var myBaddies = [Baddies]()
    
    var chosenBaddie : Baddies?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        tableView.delegate = self
        
        //Baddies Objects
        
        let walter = Baddies(name: "Walter White", job :  "Chemistry Teacher",image : UIImage(named:"Walter_White")!)
        
        let jesse  = Baddies(name: "Jesse Pinkman", job :  "Drug Dealer ",image : UIImage(named:"Jesse_Pinkman")!)
        
        let skyler  = Baddies(name: "Skyler White", job :  "House Wife",image : UIImage(named:"Skyler_White")!)
        
        let hank  = Baddies(name: "Hank Schrader", job :  "Police Officer",image : UIImage(named:"Hank Schrader")!)
        
        let gus  = Baddies(name: "Gus Fring", job :  "Owner of Los Pollos Hermanos",image : UIImage(named:"Gus_Fring")!)
        
        
        myBaddies.append(walter)
        myBaddies.append(jesse)
        myBaddies.append(skyler)
        myBaddies.append(hank)
        myBaddies.append(gus)
        
        
    }
    
    //Creating TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBaddies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = myBaddies[indexPath.row].name
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenBaddie = myBaddies[indexPath.row]
        
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            
            destinationVC.selectedBaddie = chosenBaddie
            
            
        }
    }
    
    
    
    


}


