//
//  RoleTableViewController.swift
//   WreckItRalph
//
// Created by Chang Sophia on 11/26/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit


class RoleTableViewController: UITableViewController {
    
    
    @IBOutlet var imageView: [UIImageView]!
    
    @IBOutlet var roleLabels: [UILabel]!

     
    var roles = [Role]()
    
   
    func initRoles() {
        roles.append(Role(name: "Showwhite", image: "Snowwhite", weapon: "poison apple", official: "T", number: "No.1", movie: "《Snow White&Seven Dwarfs》", pet: "birds"))
        roles.append(Role(name: "Cinderella", image: "Cinderella", weapon: "glass shoes", official: "F", number: "No.2", movie: "《Cinderella》", pet: "mouses"))
        roles.append(Role(name: "Aurora", image: "Aurora", weapon: "sleep", official: "T", number: "No.3", movie: "《Sleeping Beauty》", pet: "owl"))
        roles.append(Role(name: "Ariel", image: "Ariel", weapon: "hairbrush", official: "T", number: "No.4", movie: "《Little Mermaid》", pet: "flounder"))
        roles.append(Role(name: "Belle", image: "Belle", weapon: "book", official: "T",  number: "No.5",movie: "《Beauty and the Beast》", pet: "tea and teapot"))
         roles.append(Role(name: "Jasmine", image: "Jasmine", weapon: "knife", official:"T", number: "No.6", movie: "《Aladdin》", pet: "monkey"))
         roles.append(Role(name: "Pocahontas", image: "Pocahontas", weapon: "wooden stick", official: "T", number: "No.7", movie: "《Pocahontas》", pet: "recoon"))
        roles.append(Role(name: "Mulan", image: "Mulan", weapon: "sword", official: "F", number: "No.8", movie: "《Mulan》", pet: "Mushu dragon"))
         roles.append(Role(name: "Tiana", image: "Tiana", weapon: "gold ball", official: "F", number: "No.9", movie: "《The Princess &Frog》", pet: "frog"))
         roles.append(Role(name: "Rapunzel", image: "Rapunzel", weapon: "pan", official: "T",  number: "No.10", movie: "《Tangled》", pet: "chameleon"))
          roles.append(Role(name: "Merida", image: "Merida", weapon: "bow and arrow", official: "F", number: "No.11",movie: "《Brave》", pet: "horse"))
        roles.append(Role(name: "Anna", image: "Anna", weapon: "moose", official: "T", number: "No.12", movie: "《Frozen》", pet: "Olaf"))
        roles.append(Role(name: "Elsa", image: "Elsa", weapon: "frozen magic", official: "T", number: "No.13", movie: "《Frozen》", pet: "Olaf"))
        roles.append(Role(name: "Moana", image: "Moana", weapon: "paddle", official: "F", number: "No.14", movie: "《Moana》", pet: "pig and rooster"))
        roles.append(Role(name: "Vanellope", image: "Vanellope", weapon: "race car", official: "T", number: "No.15", movie: "《Wretch It Ralph》", pet: "Ralph"))
    }
    
    
  
    
    override func viewDidLoad() {
        
        initRoles()
        
       
        var i = 0
        for label in roleLabels{
            label.text = roles[i].name
            i = i + 1
        }
        
        var j = 0
        for role in imageView{
            role.image = UIImage(named: roles[j].image)
            j = j + 1
        }
        
      
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? RoleViewController
        if let row = tableView.indexPathForSelectedRow?.row {
            controller?.numberName = roles[row].number
            controller?.princessName = roles[row].name
            controller?.movieName = roles[row].movie
            controller?.weaponName = roles[row].weapon
            controller?.petName = roles[row].pet
            controller?.imageName = roles[row].image
            
            
        }
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
        
    }

    
}
