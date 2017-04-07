//
//  ViewController.swift
//  Actividad1
//
//  Created by Sergio Arranz on 9/3/17.
//  Copyright © 2017 Sergio Arranz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txtUser:UITextField?
    @IBOutlet var txtPass:UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func SuccessLogin(_ sender: Any) {
        if (txtUser?.text?.isEqual(DataHolder.SHI.sEmailR))!&&((txtPass?.text)?.isEqual(DataHolder.SHI.sPassR))!{
            self.performSegue(withIdentifier: "Trans1", sender: self)
        }
        

}

}
