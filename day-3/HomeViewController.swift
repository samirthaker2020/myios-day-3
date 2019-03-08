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
        let userdefault = UserDefaults.standard
        let uid=userdefault.string(forKey: "userid")
if let e=uname
{
    self.lbluname.text="Welcome...\(e)"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnway(_ sender: UIButton) {
        self.performSegue(withIdentifier: "movetoabout", sender: nil)
        
    }
    
    
 /* to store data permanently
 1.userDefault
 2.plist (property lines)
 3.coredata/sal lite
 4.xml/json
 5.rest API
 */
 

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="movetoabout"
        {
            if let destinationVC = segue.destination as? AboutViewController {
                destinationVC.c = "1000"
        }
    }
 
    
}
}
