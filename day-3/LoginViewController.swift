//
//  ViewController.swift
//  day-3
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var txtusername: UITextField!
    
    @IBOutlet weak var swremember: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden=true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let nxt = sb.instantiateViewController(withIdentifier: "1") as! HomeViewController
        
        self.present(nxt, animated: true)
    }
    @IBAction func btnsubmit(_ sender: UIButton) {
        if(txtusername.text == "s@gmail.com" && txtpassword.text == "samir")
        {
           /* let sb = UIStoryboard(name: "Main", bundle: nil)
            let nxt = sb.instantiateViewController(withIdentifier: "1") as! HomeViewController
            
            self.present(nxt, animated: true)*/
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let nxt = sb.instantiateViewController(withIdentifier: "1") as! HomeViewController
            nxt.uname=txtusername.text
            self.navigationController?.pushViewController(nxt, animated: true)
        }
        else
        {
            let alert = UIAlertController(title: "INVALID", message: "Invalid username or password", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            
            self.present(alert, animated: true)
        }
    }
    
    
}

