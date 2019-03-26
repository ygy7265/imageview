//
//  ViewController.swift
//  imageview
//
//  Created by D7703_19 on 2019. 3. 26..
//  Copyright © 2019년 sin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    var count = 0
    var toggle = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    @IBAction func changImage(_ sender: Any) {
        
        
        if toggle == true {
             count += 1
            if count == 5{
                toggle = false
            }
        }
        else if toggle == false{
           count -= 1
            if count == 1{
                toggle = true
            }
        }
        
        myImage.image = UIImage(named: "frame\(count).png")
        mylabel.text = String(count)
    }
    
}

