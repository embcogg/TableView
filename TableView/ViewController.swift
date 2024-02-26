//
//  ViewController.swift
//  TableView
//
//  Created by Emily Coggins on 2/24/24.
//

import UIKit

class ViewController: UIViewController {
    let recipes = ["Chocolate Chip Cookies", "Vanilla Cupcakes", "Strawberry Shortcake", "Apple Crisp", "Chocolate Brownies", "Lemon Bars", "Banana Bread", "Peach Cobbler", "Raspberry Cheesecake", "Tiramisu"]
    
    
    @IBOutlet var recipeTableView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController{
            vc.img = UIImage(named: recipes[indexPath.row])!
            vc.recipe_name = recipes[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.recipeName.text = recipes[indexPath.row]
        cell.imgView.image = UIImage(named: recipes[indexPath.row])
        return cell
    }
    
}

