//
//  DetailViewController.swift
//  BoxOffice
//
//  Created by oumayma cherif on 7/10/2023.
//

import UIKit

class DetailViewController: UIViewController {

    var movies :String?
              
              override func viewDidLoad() {
                  super.viewDidLoad()
                  image.image = UIImage(named: movies!)
                  label.text = movies!

    }
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var text: UITextView!
    

   

}
