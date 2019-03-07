//
//  HomeViewController.swift
//  day-3
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var uname:String?
    @IBOutlet weak var lbluname: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton=true
        self.navigationController?.hidesBarsOnTap=true
        self.navigationController?.navigationBar.isHidden=true
if let e=uname
{
    self.lbluname.text="Welcome...\(e)"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnway(_ sender: UIButton) {
        self.performSegue(withIdentifier: "movetoabout", sender: nil)
        
    }
    
    
 

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="movetoabout"
        {
            if let destinationVC = segue.destination as? AboutViewController {
                destinationVC.c = "1000"
        }
    }
 
    
}
}
