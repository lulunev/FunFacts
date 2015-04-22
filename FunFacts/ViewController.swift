//
//  ViewController.swift
//  FunFacts
//
//  Created by Daniel Lunev on 12.10.14.
//  Copyright (c) 2014 Lunev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        funFactLabel.text = factBook.randomFact()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        

       
        
    }
    

}

