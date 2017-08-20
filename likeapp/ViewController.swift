//
//  ViewController.swift
//  likeapp
//
//  Created by moeka on 2017/08/19.
//  Copyright © 2017年 moeka. All rights reserved.
//

import UIKit
import AVFoundation
import BTNavigationDropdownMenu

class ViewController: UIViewController , AVAudioPlayerDelegate{
    
    
    @IBOutlet weak var selectedCellLabel: UILabel!
    var menuView: BTNavigationDropdownMenu!
    
    var timer: Timer!
    @IBOutlet var penguin: UIImageView!
    @IBOutlet var kawaru : SpringImageView!
    @IBOutlet var maruButton : SpringButton!
    var audioPlayer : AVAudioPlayer!
    let saveData = UserDefaults.standard
    let userDefaults = UserDefaults.standard
    
    var imageView : UIImageView!
    var hato: UIImageView!
    
    // UIButton のインスタンスを生成
    let button = UIButton()
    
    var number: Int = 0
    var kibunnnum: Int = 0
    var oshitanum: Int = 0
    var j: Int = 0
    var countnum:Int = 0
    var hoshinum:Int = 0
    var shizukunum:Int = 0
    
    
    
    @IBOutlet var label: UILabel!
    @IBOutlet var heartlabel: UILabel!
    
    
    func update(tm: Timer) {
        penguin.layer.position = CGPoint(x: self.view.bounds.width/1.5, y: 160)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let items = ["Most Popular", "Latest", "Trending", "Nearest", "Top Picks"]
        self.selectedCellLabel.text = items.first
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:180/255.0, blue:220/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        menuView = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: "Dropdown Menu", items: items)
        
        
        menuView.didSelectItemAtIndexHandler = {(indexPath: Int) -> () in
            print("Did select item at index: \(indexPath)")
            self.selectedCellLabel.text = items[indexPath]
        }
        
        self.navigationItem.titleView = menuView
        
        
        let audioPath = Bundle.main.path(forResource: "cursor1", ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        
        
        // auido を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        
        // エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        self.heartlabel.layer.cornerRadius = 20
        self.heartlabel.layer.borderColor = UIColor.lightGray.cgColor
        self.heartlabel.layer.borderWidth = 1
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources can be recreated.
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        if userDefaults.object(forKey: "kibunn") != nil{
            kibunnnum = userDefaults.object(forKey: "kibunn") as! Int
        }
        if userDefaults.object(forKey: "heart") != nil{
            countnum = userDefaults.object(forKey: "heart") as! Int
        }
        if userDefaults.object(forKey: "hoshi") != nil{
            hoshinum = userDefaults.object(forKey: "hoshi") as! Int
        }
        if userDefaults.object(forKey: "shizuku") != nil{
            shizukunum = userDefaults.object(forKey: "shizuku") as! Int
        }
        
    }
    
    
    
    
    
    @IBAction func maruButtonTouchDown(sender : AnyObject){
        
        heartlabel.text = heartlabel.text
        kawaru.animation = "pop"
        kawaru.duration = 0.5
        kawaru.animate()
        
        // 表示する画像を設定する.
        imageView = UIImageView(frame: CGRect(x:0,y:0,width:30,height:30))
        
        imageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: 410)
        
        hato = UIImageView(frame: CGRect(x:0,y:0,width:20,height:20))
        
        hato.layer.position = CGPoint(x:235, y: 160)
        // UIImageViewをViewに追加する.
        self.view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
        
        
        UIView.animate(withDuration: 0.5, animations:{
            self.imageView.frame.origin.y -= 225 //imageViewの移動距離
        }, completion: nil )
        
        number = Int(arc4random_uniform(3))
        
        //ランダムに画像を表示
        if number == 0{
            imageView.image = UIImage(named:"いろ.png")
            
            countnum += 10
            heartlabel.text = String(countnum)
            kibunnnum += 100
            
            if countnum % 10 == 0{
                audioPlayer.play()
                
                hato.image = UIImage(named:"いろ.png")
                
                // UIImageViewをViewに追加する.
                self.view.addSubview(hato)
                self.view.sendSubview(toBack: hato)
                
                UIView.animate(withDuration: 0.5, animations: {
                    self.hato.frame.origin.y -= 50
                    self.hato.alpha = 0
                }, completion: { finished in
                    self.hato.removeFromSuperview()
                })
            }
            
        }else if number == 1{
            imageView.image = UIImage(named:"ほし.png")
            hoshinum += 1
            kibunnnum += 1
        }else if number == 2{
            imageView.image = UIImage(named:"しずく.png")
            shizukunum += 1
            kibunnnum += 1
        }
        userDefaults.set(kibunnnum, forKey: "kibunn")
        userDefaults.set(countnum, forKey: "heart")
        userDefaults.set(hoshinum, forKey: "hoshi")
        userDefaults.set(shizukunum, forKey: "shizuku")
        
    }
    
    
    
}
