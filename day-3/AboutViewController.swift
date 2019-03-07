//
//  AboutViewController.swift
//  day-3
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    var c:String?
     @IBOutlet weak var lbl1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
if let i=c
{
        lbl1.text=i
        // Do any additional setup after loading the view.
    }
    

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func btn1(_ sender: UIButton) {
          let v = self.navigationController?.viewControllers[1]
        self.navigationController?.popToViewController(v!, animated: true)
    }
    
}
