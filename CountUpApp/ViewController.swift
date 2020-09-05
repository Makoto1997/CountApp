//
//  ViewController.swift
//  CountUpApp
//
//  Created by 田中誠 on 2020/08/06.
//  Copyright © 2020 田中誠. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "0"
        
    }

    @IBAction func plus(_ sender: Any) {
        
        count = count + 1
        
        countLabel.text = String(count)
        
            if count >= 10{
                
                changeColor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        
        count = count - 1
        
        countLabel.text = String(count)
        
        if count <= 0{
            
            resetColor()
            
        }
        
    }
    
    func changeColor(){
        
        countLabel.textColor = .red
        
    }
    
        func resetColor(){
        
        countLabel.textColor = .white
        
    }
    
}

