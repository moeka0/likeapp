//
//  CollectionViewController.swift
//  likeapp
//
//  Created by moeka on 2017/08/19.
//  Copyright © 2017年 moeka. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard
    
    @IBOutlet var hoshilabel: UILabel!
    @IBOutlet var shizukulabel: UILabel!
    @IBOutlet var soukolabel: UILabel!
    var hoshi : Int = 0
    var shizuku : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        hoshi = userDefaults.object(forKey: "hoshi") as! Int
        shizuku = userDefaults.object(forKey: "shizuku") as! Int
        
        userDefaults.set(hoshi, forKey: "hoshi")
        hoshilabel.text = String(hoshi)
        
        userDefaults.set(shizuku, forKey: "shizuku")
        shizukulabel.text = String(shizuku)
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
