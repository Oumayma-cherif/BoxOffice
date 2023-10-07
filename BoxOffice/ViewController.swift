//
//  ViewController.swift
//  BoxOffice
//
//  Created by oumayma cherif on 7/10/2023.
//

import UIKit

class ViewController :UIViewController ,UITableViewDataSource ,UITableViewDelegate {
   
    var data = ["El Camino","Extraction","Project Power","Six Underground","Spenser Confidential","The Irishman"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
        let contentView = cell?.contentView
        let label = contentView?.viewWithTag(1) as! UILabel
        
        let image = contentView?.viewWithTag(2) as! UIImageView
        
        label.text = data[indexPath.row]
        image.image = UIImage(named: data[indexPath.row])
        return cell!
        
    }
    
    override func viewDidLoad() {
super.viewDidLoad()    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print (data[indexPath.row])
        let param = data[indexPath.row]
        performSegue(withIdentifier:"msegue", sender: param)
    }
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier=="msegue")
       {
           let destination = segue.destination as! DetailViewController
            destination.movies=sender as! String?
        }
    
   
        
        

}


}


