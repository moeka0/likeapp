//
//  ShopViewController.swift
//  likeapp
//
//  Created by moeka on 2017/08/19.
//  Copyright © 2017年 moeka. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController{
    
    @IBOutlet weak var label1 : UILabel!
    var text1 = String()
    var num : Int = 0
    let userDefaults = UserDefaults.standard
    
    @IBOutlet weak var jyub : UIButton!
    @IBOutlet weak var hyakub : UIButton!
    
    @IBAction func jyu(){
        if num >= 10 && num < 20{
            num -= 10
            label1.text = String(num)
            userDefaults.set(num, forKey: "heart")
            jyub.backgroundColor = UIColor.lightGray
        }else if num >= 20{
            num -= 10
            label1.text = String(num)
            userDefaults.set(num, forKey: "heart")
            
            if num < 110{
                hyakub.isEnabled = false
                hyakub.backgroundColor = UIColor.lightGray
                userDefaults.set(num, forKey: "heart")
            }
        }else if num < 10{
            jyub.isEnabled = false
            label1.text = String(num)
            jyub.backgroundColor = UIColor.lightGray
            userDefaults.set(num, forKey: "heart")
        }
    }
    
    @IBAction func hyaku(){
        
        if num >= 200{
            num -= 100
            label1.text = String(num)
            userDefaults.set(num, forKey: "heart")
            
        }else if num >= 100 && num < 110{
            num -= 100
            jyub.isEnabled = false
            jyub.backgroundColor = UIColor.lightGray
            label1.text = String(num)
            userDefaults.set(num, forKey: "heart")
            
        }else if num >= 100 && num < 200{
            num -= 100
            label1.text = String(num)
            userDefaults.set(num, forKey: "heart")
            hyakub.backgroundColor = UIColor.lightGray
            
        }
        
        if num < 100{
            hyakub.isEnabled = false
            label1.text = String(num)
            userDefaults.set(num, forKey: "heart")
            hyakub.backgroundColor = UIColor.lightGray
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        num = userDefaults.object(forKey: "heart") as! Int
        label1.text = String(num)
        
        if num >= 10{
            jyub.backgroundColor = UIColor(red:255/255, green:175/255, blue:172/255, alpha: 1)
        }else if num >= 0{
            jyub.isEnabled = false
            jyub.backgroundColor = UIColor.lightGray
        }
        
        if num >= 100{
            hyakub.backgroundColor = UIColor(red:255/255, green:175/255, blue:172/255, alpha: 1)
        }else if num >= 0{
            hyakub.isEnabled = false
            hyakub.backgroundColor = UIColor.lightGray
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
