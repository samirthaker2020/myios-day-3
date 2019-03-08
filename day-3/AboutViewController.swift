//
//  AboutViewController.swift
//  day-3
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var lbl2: UILabel!
    var c:String?
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var seg1: UISegmentedControl!
    @IBOutlet weak var lblslider: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
           seg1.insertSegment(withTitle: "Monkey", at: 3, animated: true)
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
    
    @IBAction func btnsegment(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            img1.image=UIImage(named: "0.jpeg")
        case 1:
            img1.image=UIImage(named: "1.jpeg")
        case 2:
            img1.image=UIImage(named: "2.jpeg")
        case 3:
             img1.image=UIImage(named: "3.jpeg")
        default:
             img1.image=UIImage(named: "0.jpeg")
        }
    }
    
    @IBAction func slider(_ sender: UISlider) {
        lblslider.text=String(Int(sender.value))
    }
    
    @IBAction func stepper1(_ sender: UIStepper) {
        lbl2.text="\(sender.value)"
    }
    
}
