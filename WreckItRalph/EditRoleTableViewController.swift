//
//  EditRoleTableViewController.swift
//  SendData
//
//  Created by Chang Sophia on 12/11/18.
//  Copyright © 2018 SHIH-YING PAN. All rights reserved.
//

import UIKit


class EditRoleTableViewController: UITableViewController {
    var role: Role?
    
    @IBAction func textField(_ sender: Any) {
    }
    
    
   
    @IBOutlet weak var officialSegControl: UISegmentedControl!
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var movieTextField: UITextField!
    
    @IBOutlet weak var petTextField: UITextField!
    @IBOutlet weak var weaponTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = nameTextField.text ?? ""
        let image = UIImage(named: "")
        let weapon = weaponTextField.text ?? ""
        let official = officialSegControl.isSelected
        let nubmer = numberTextField.text ?? ""
        let movie = movieTextField.text ?? ""
        let pet = petTextField.text ?? ""
        role = Role(name: name, image: "", weapon: weapon, official: "", number: nubmer, movie: movie, pet: pet)
        
        
    }
   
    
 
}


