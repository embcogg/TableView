//
//  SecondViewController.swift
//  TableView
//
//  Created by Emily Coggins on 2/24/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var recipeName: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var img = UIImage()
    var recipe_name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeName.text = recipe_name
        imgView.image = img

    }
    

}
