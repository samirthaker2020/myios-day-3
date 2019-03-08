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
        let userdefault = UserDefaults.standard
        if let uid=userdefault.string(forKey: "userid")
        {
            txtusername.text=uid
            swremember.isOn=true
        }else
        {
            
        }
        if let pass=userdefault.string(forKey: "pass")
        {
            txtpassword.text=pass
            swremember.isOn=false
        }
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let nxt = sb.instantiateViewController(withIdentifier: "1") as! HomeViewController
        
        self.present(nxt, animated: true)
    }
    @IBAction func btnsubmit(_ sender: UIButton) {
         var userdefault = UserDefaults.standard
        if(txtusername.text == "s@gmail.com" && txtpassword.text == "samir")
        {
           /* let sb = UIStoryboard(name: "Main", bundle: nil)
            let nxt = sb.instantiateViewController(withIdentifier: "1") as! HomeViewController
            
            self.present(nxt, animated: true)*/
           
            if(swremember.isOn)
            {
                
                userdefault.set(txtusername.text, forKey: "userid")
               userdefault.set(txtpassword.text, forKey: "pass")
            }
            else
            {
                userdefault.removeObject(forKey: "userid")
                userdefault.removeObject(forKey: "pass")
            }
            
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

