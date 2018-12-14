//
//  RoleViewController.swift
//   WreckItRalph
//
// Created by Chang Sophia on 11/26/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit

class RoleViewController: UIViewController {
    var role: Role?
    var numberName: String?
    var princessName: String?
    var movieName: String?
    var weaponName: String?
    var officialName: String?
    var petName: String?
    var imageName: String?
  
 
   
   
   
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var officialSegControl: UISegmentedControl!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var weaponTextField: UITextField!
    @IBOutlet weak var petTextField: UITextField!
    
    func changed(){
        
        if let image = imageName, let number = numberName, let name = princessName, let movie = movieName, let weapon = weaponName, let pet = petName{
            imageView.image = UIImage(named: "\(image)")
            numberTextField.text = number
            nameTextField.text = name
            movieTextField.text = movie
            weaponTextField.text = weapon
            petTextField.text = pet
          
            
        }
    }
    
   
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        changed()
       
        
      
        imageView.layer.masksToBounds = false
        imageView.layer.shadowOffset = CGSize(width:-8,height:8)
        imageView.layer.shadowColor = UIColor.darkGray.cgColor
        imageView.layer.shadowOpacity = 0.8
        
        numberTextField.layer.masksToBounds = false
        numberTextField.layer.shadowOffset = CGSize(width:-8,height:8)
        numberTextField.layer.shadowColor = UIColor.darkGray.cgColor
        numberTextField.layer.shadowOpacity = 0.8
        
        nameTextField.layer.masksToBounds = false
        nameTextField.layer.shadowOffset = CGSize(width:-8,height:8)
        nameTextField.layer.shadowColor = UIColor.darkGray.cgColor
        nameTextField.layer.shadowOpacity = 0.8
        
        movieTextField.layer.masksToBounds = false
        movieTextField.layer.shadowOffset = CGSize(width:-8,height:8)
        movieTextField.layer.shadowColor = UIColor.darkGray.cgColor
        movieTextField.layer.shadowOpacity = 0.8
      
        weaponTextField.layer.masksToBounds = false
        weaponTextField.layer.shadowOffset = CGSize(width:-8,height:8)
        weaponTextField.layer.shadowColor = UIColor.darkGray.cgColor
        weaponTextField.layer.shadowOpacity = 0.8
        
        petTextField.layer.masksToBounds = false
        petTextField.layer.shadowOffset = CGSize(width:-8,height:8)
        petTextField.layer.shadowColor = UIColor.darkGray.cgColor
        petTextField.layer.shadowOpacity = 0.8
        
        
        if let role = role {
            if role.official == "T" {
                officialSegControl.selectedSegmentIndex = 0
            } else {
                officialSegControl.selectedSegmentIndex = 1

            }
        }
    }
    
    
   

}
