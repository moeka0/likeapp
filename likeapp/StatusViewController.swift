//
//  StatusViewController.swift
//  likeapp
//
//  Created by moeka on 2017/08/19.
//  Copyright © 2017年 moeka. All rights reserved.
//

import UIKit

class StatusViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard
    
    @IBOutlet var statuslabel: UILabel!
    @IBOutlet var kibunnlabel: UILabel!
    var kibunn : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        kibunn = userDefaults.object(forKey: "kibunn") as! Int
        userDefaults.set(kibunn, forKey: "kibunn")
        
        if kibunn > 20000{
            kibunnlabel.text = "気分超サイコー"
        }else if kibunn > 10000{
            kibunnlabel.text = "気分サイコー"
        }else if kibunn > 5000{
            kibunnlabel.text = "気分イイ"
        }else if kibunn > 2500{
            kibunnlabel.text = "気分フツー"
        }else if kibunn > 1000{
            kibunnlabel.text = "気分マァマァ"
        }else if kibunn > 500{
            kibunnlabel.text = "気分ショボン"
        }else if kibunn <= 500{
            kibunnlabel.text = "気分サイアク"
            kibunnlabel.backgroundColor = UIColor(red: 182/255, green: 209/255, blue: 225/255, alpha: 1)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
