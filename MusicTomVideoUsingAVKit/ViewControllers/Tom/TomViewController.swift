//
//  TomViewController.swift
//  MusicTomVideoUsingAVKit
//
//  Created by Nikhil Patil on 31/01/19.
//  Copyright © 2019 Nikhil Patil. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class TomViewController: UIViewController {

    //Variables
    
    var tomButtonsView : UIScrollView!
    var button : UIButton!
    var label : UILabel!
    var imageView : UIImageView!
    var imageView0 : UIImageView!
    
    var imageView1 : UIImageView!
    var imageView2 : UIImageView!
    var imageView3 : UIImageView!
    var imageView4 : UIImageView!
    var imageView5 : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createUI()
        
        }
            
        func createUI(){
            
            //Tom Image
            imageView0 = UIImageView()
            imageView0.frame = CGRect.init(x: 53, y: 93, width: 308, height: 489)
            imageView0.image = UIImage(named: "0")
            view.addSubview(imageView0)
            
            //ScrollView
            tomButtonsView = UIScrollView()
            tomButtonsView.frame = CGRect.init(x: 0, y: 600, width: 414, height: 250)
            tomButtonsView.contentSize = CGSize(width: 2000, height: 250)
//            tomButtonsView.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            view.addSubview(tomButtonsView)
            
            var buttonArray = ["15","27","36","101","145","170","205","232","263","299","333","396","406","460","480","505","535","558"]
            
            var labelArray = ["Cat Angry","Cat Blink","Cat Cymbal","Cat Drink","Cat Eat","Cat Fart","Cat Foot Left","Cat Foot Right","Cat Happy","Cat Happy Simple","Cat Knockout","Cat Listen","Cat Pie","Cat Scratch","Cat Sneeze","Cat Stomach","Cat Talk","Cat Zeh"]
            
            //Button Images Of Tom Create using this loop
            var b = 10
            for a in 0...17{
                button = UIButton()
                button.frame = CGRect.init(x: b, y: 10, width: 100, height: 150)
                button.tag = a
                
                button.setImage(UIImage(named: "\(buttonArray[a])"), for: .normal)
                button.setTitle("\(labelArray[a])", for: .normal)
                button.titleLabel?.text = "\(labelArray[a])"
                tomButtonsView.addSubview(button)
                
                self.button.addTarget(self, action: #selector(tomActions), for: .touchUpInside)
                //button.addTarget(self, action: #selector(tomActions), for: .touchUpInside)
                
                label = UILabel()
                label.frame = CGRect.init(x: b, y: 102, width: 100, height: 165)
                label.text = "\(labelArray[a])"
                label.textAlignment = .center
                label.font = UIFont.init(name: "Marker Felt", size: 20)
                label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                tomButtonsView.addSubview(label)
                b = b+110
            }
            
        }
    
     // Func For Audio
    var audioPlayer = AVAudioPlayer()
    
    func playSound(file:String, ext:String) -> Void {
        do {
            let url = URL.init(fileURLWithPath: Bundle.main.path(forResource: file, ofType: ext)!)
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch let error {
            NSLog(error.localizedDescription)
        }
    }
    
    // Tom Actions assign to Button Click Action
    @objc func tomActions(value:UIButton!){
    
        let tagValue = value.tag
        
        var imageArray:[UIImage] = []
        
        if((imageView) != nil){
            imageView.stopAnimating()
            imageView.removeFromSuperview()
            print("Bottom Image is Animating")
        }
        imageView = UIImageView()
        
        imageView0.isHidden = true
        
        // For Button Click Animation and Sound will Play
        switch tagValue {
        case 0:
            imageArray = []
            for a in 0...25{
                imageArray.append(UIImage(named: "\(a)")!)
                playSound(file: "angry_8000", ext: "wav")
            }
            imageView.animationDuration = 2.5
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
            
        case 1:
            imageArray = []
            for a in 26...28{
                imageArray.append(UIImage(named: "\(a)")!)
                
            }
            imageView.animationDuration = 2
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 2:
            imageArray = []
            for a in 29...41{
                imageArray.append(UIImage(named: "\(a)")!)
                playSound(file: "cymbal_8000", ext: "wav")
            }
            imageView.animationDuration = 0.8
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 3:
            imageArray = []
            for a in 42...122{
                imageArray.append(UIImage(named: "\(a)")!)
                playSound(file: "p_drink_milk_8000", ext: "wav")
            }
            imageView.animationDuration = 3.8
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 4:
            imageArray = []
            for a in 123...162{
                imageArray.append(UIImage(named: "\(a)")!)
                playSound(file: "p_eat_11025", ext: "wav")
            }
            imageView.animationDuration = 2.7
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
            
        case 5:
            imageArray = []
            for a in 163...190{
                imageArray.append(UIImage(named: "\(a)")!)
                playSound(file: "fart003_8000", ext: "wav")
            }
            imageView.animationDuration = 2
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 6:
            imageArray = []
            for a in 192...218{
                imageArray.append(UIImage(named: "\(a)")!)
            playSound(file: "p_foot3_8000", ext: "wav")
                
            }
            imageView.animationDuration = 4
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 7:
            imageArray = []
            for a in 219...248{
                imageArray.append(UIImage(named: "\(a)")!)
            playSound(file: "p_foot4_11025", ext: "wav")
            }
            imageView.animationDuration = 4
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 8:
            imageArray = []
            for a in 249...277{
                imageArray.append(UIImage(named: "\(a)")!)
            }
            imageView.animationDuration = 4
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 9:
            imageArray = []
            for a in 278...302{
                imageArray.append(UIImage(named: "\(a)")!)
            }
            imageView.animationDuration = 4
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 10:
            imageArray = []
            for a in 303...383{
                imageArray.append(UIImage(named: "\(a)")!)
            playSound(file: "p_stars2s_8000", ext: "wav")
            }
            imageView.animationDuration = 5
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 11:
            imageArray = []
            for a in 384...395{
                imageArray.append(UIImage(named: "\(a)")!)
            }
            imageView.animationDuration = 4
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 12:
            imageArray = []
            for a in 396...418{
                imageArray.append(UIImage(named: "\(a)")!)
                playSound(file: "fall_11025", ext: "wav")
            }
            imageView.animationDuration = 2
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 13:
            imageArray = []
            for a in 419...474{
                imageArray.append(UIImage(named: "\(a)")!)
                playSound(file: "tafel_kratzen_8000", ext: "wav")
            }
            imageView.animationDuration = 2.5
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 14:
            imageArray = []
            for a in 475...488{
                imageArray.append(UIImage(named: "\(a)")!)
            playSound(file: "p_sneeze_8000", ext: "wav")
                }
            imageView.animationDuration = 2
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 15:
            imageArray = []
            for a in 489...522{
                imageArray.append(UIImage(named: "\(a)")!)
                playSound(file: "p_belly1_8000", ext: "wav")
            }
            imageView.animationDuration = 3
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 16:
            imageArray = []
            for a in 523...538{
                imageArray.append(UIImage(named: "\(a)")!)
            playSound(file: "p_meuu_8000", ext: "wav")
            }
            imageView.animationDuration = 0.4
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        case 17:
            imageArray = []
            for a in 539...569{
                imageArray.append(UIImage(named: "\(a)")!)
            playSound(file: "p_yawn2_11a_11025", ext: "wav")
            }
            imageView.animationDuration = 4
            Timer.scheduledTimer(timeInterval: imageView.animationDuration, target: self, selector: #selector(timervalue), userInfo: self, repeats: false)
        default:
            print("nothing is happening")
        }
        imageView.frame = CGRect.init(x: 53, y: 93, width: 308, height: 489)
        imageView.animationImages = imageArray
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
        
        view.addSubview(imageView)
        
        }
    
    
    // Button Function for Slap Audio
    // Left Slap
    @IBAction func leftSlapAction(_ sender: Any) {
        if((imageView1) != nil){
            imageView1.stopAnimating()
            imageView1.removeFromSuperview()
            print("Left Slap Is Animating")
        }
        
        imageView0.isHidden = true
        imageView1 = UIImageView()
        imageView1.frame = CGRect.init(x: 53, y: 93, width: 308, height: 489)
        
        imageView1.animationImages = [UIImage(named: "173"),UIImage(named: "174"),UIImage(named: "175"),UIImage(named: "176"),UIImage(named: "177"),UIImage(named: "178"),UIImage(named: "179"),UIImage(named: "180"),UIImage(named: "181"),UIImage(named: "182")] as? [UIImage]
        
        imageView1.animationDuration = 1
        imageView1.animationRepeatCount = 1
        imageView1.startAnimating()
        view.addSubview(imageView1)
        
        playSound(file: "slap1_8000", ext: "wav")
        Timer.scheduledTimer(timeInterval: imageView1.animationDuration, target: self, selector: #selector(timervalue1), userInfo: self, repeats: false)
    }
    
    // Right Slap
    @IBAction func rightSlapAction(_ sender: Any) {
        
        if((imageView2) != nil){
            imageView2.stopAnimating()
            imageView2.removeFromSuperview()
            print("Right Slap Is Animating")
        }
        
        imageView0.isHidden = true
        imageView2 = UIImageView()
        imageView2.frame = CGRect.init(x: 53, y: 93, width: 308, height: 489)
        
        imageView2.animationImages = [UIImage(named: "183"),UIImage(named: "184"),UIImage(named: "185"),UIImage(named: "186"),UIImage(named: "187"),UIImage(named: "188"),UIImage(named: "189"),UIImage(named: "190")] as? [UIImage]
        
        imageView2.animationDuration = 1
        imageView2.animationRepeatCount = 1
        imageView2.startAnimating()
        view.addSubview(imageView2)
        
        playSound(file: "slap1_8000", ext: "wav")
        Timer.scheduledTimer(timeInterval: imageView2.animationDuration, target: self, selector: #selector(timervalue2), userInfo: self, repeats: false)
        
        
    }
    
    // Button Action For Belly Audio
    @IBAction func noNoNoAction(_ sender: Any) {
        
        if((imageView3) != nil){
            imageView3.stopAnimating()
            imageView3.removeFromSuperview()
            print("Belly Touch is Animating")
        }
        
        imageView0.isHidden = true
        imageView3 = UIImageView()
        imageView3.frame = CGRect.init(x: 53, y: 93, width: 308, height: 489)
        
        imageView3.animationImages = [UIImage(named: "489"),UIImage(named: "490"),UIImage(named: "491"),UIImage(named: "492"),UIImage(named: "493"),UIImage(named: "494"),UIImage(named: "495"),UIImage(named: "496"),UIImage(named: "497"),UIImage(named: "498"),UIImage(named: "499"),UIImage(named: "500"),UIImage(named: "501"),UIImage(named: "502"),UIImage(named: "504"),UIImage(named: "505"),UIImage(named: "506"),UIImage(named: "507"),UIImage(named: "508"),UIImage(named: "509"),UIImage(named: "510"),UIImage(named: "511"),UIImage(named: "512"),UIImage(named: "513"),UIImage(named: "514"),UIImage(named: "515"),UIImage(named: "516"),UIImage(named: "517"),UIImage(named: "518"),UIImage(named: "519"),UIImage(named: "520"),UIImage(named: "521"),UIImage(named: "522")] as? [UIImage]
        
        imageView3.animationDuration = 4
        imageView3.animationRepeatCount = 1
        imageView3.startAnimating()
        view.addSubview(imageView3)
        
        playSound(file: "p_belly1_8000", ext: "wav")
        Timer.scheduledTimer(timeInterval: imageView3.animationDuration, target: self, selector: #selector(timervalue3), userInfo: self, repeats: false)
        
    }
    
    //Button Action For Foots Audio
    // Foot Right
    @IBAction func ayyyooAction(_ sender: Any) {
        
        if((imageView4) != nil){
            imageView4.stopAnimating()
            imageView4.removeFromSuperview()
            print("Right Foot Touch is Animating")
        }
        
        imageView0.isHidden = true
        imageView4 = UIImageView()
        imageView4.frame = CGRect.init(x: 53, y: 93, width: 308, height: 489)
        
        imageView4.animationImages = [UIImage(named: "192"),UIImage(named: "193"),UIImage(named: "194"),UIImage(named: "195"),UIImage(named: "196"),UIImage(named: "197"),UIImage(named: "198"),UIImage(named: "199"),UIImage(named: "200"),UIImage(named: "201"),UIImage(named: "202"),UIImage(named: "203"),UIImage(named: "204"),UIImage(named: "205"),UIImage(named: "206"),UIImage(named: "207"),UIImage(named: "208"),UIImage(named: "209"),UIImage(named: "210"),UIImage(named: "211"),UIImage(named: "212"),UIImage(named: "213"),UIImage(named: "214"),UIImage(named: "215"),UIImage(named: "216"),UIImage(named: "217"),UIImage(named: "218")] as? [UIImage]
        
        imageView4.animationDuration = 2
        imageView4.animationRepeatCount = 1
        imageView4.startAnimating()
        view.addSubview(imageView4)
        
        playSound(file: "p_foot3_8000", ext: "wav")
        Timer.scheduledTimer(timeInterval: imageView4.animationDuration, target: self, selector: #selector(timervalue4), userInfo: self, repeats: false)
    }
    // Foot Left
    @IBAction func aoouaaaouAction(_ sender: Any) {
        
        if((imageView5) != nil){
            imageView5.stopAnimating()
            imageView5.removeFromSuperview()
            print("Left Foot Touch is Animating")
        }
        
        imageView0.isHidden = true
        imageView5 = UIImageView()
        
        imageView5.frame = CGRect.init(x: 53, y: 93, width: 308, height: 489)

        imageView5.animationImages = [UIImage(named: "219"),UIImage(named: "220"),UIImage(named: "221"),UIImage(named: "222"),UIImage(named: "223"),UIImage(named: "224"),UIImage(named: "225"),UIImage(named: "226"),UIImage(named: "227"),UIImage(named: "228"),UIImage(named: "229"),UIImage(named: "230"),UIImage(named: "231"),UIImage(named: "232"),UIImage(named: "233"),UIImage(named: "234"),UIImage(named: "235"),UIImage(named: "236"),UIImage(named: "237"),UIImage(named: "238"),UIImage(named: "239"),UIImage(named: "240"),UIImage(named: "241"),UIImage(named: "242"),UIImage(named: "243"),UIImage(named: "244"),UIImage(named: "245"),UIImage(named: "246"),UIImage(named: "247"),UIImage(named: "248")] as? [UIImage]

        imageView5.animationDuration = 2
        imageView5.animationRepeatCount = 1
        imageView5.startAnimating()
        view.addSubview(imageView5)
        
        playSound(file: "p_foot4_11025", ext: "wav")
        Timer.scheduledTimer(timeInterval: imageView5.animationDuration, target: self, selector: #selector(timervalue5), userInfo: self, repeats: false)
    }
    
    //Func of Timing for Animation in Scrolling Button Click
        @objc func timervalue(){
            if(imageView.isAnimating == true){
                imageView.stopAnimating()
                imageView0.isHidden = false
            }else{
                imageView0.isHidden = false
            }
            
        }

    //Func of Timing for Animation while pressed on image Top Left
    @objc func timervalue1(){
        if(imageView1.isAnimating == true){
            imageView1.stopAnimating()
            imageView0.isHidden = false
        }else{
            imageView0.isHidden = false
        }
        
    }
    
    //Func of Timing for Animation while pressed on image Top Right
    @objc func timervalue2(){
        if(imageView2.isAnimating == true){
            imageView2.stopAnimating()
            imageView0.isHidden = false
        }else{
            imageView0.isHidden = false
        }
        
    }
    
    //Func of Timing for Animation while pressed on image Middel Part
    @objc func timervalue3(){
        if(imageView3.isAnimating == true){
            imageView3.stopAnimating()
            imageView0.isHidden = false
        }else{
            imageView0.isHidden = false
        }
        
    }
    
    //Func of Timing for Animation while pressed on image bottom Right
    @objc func timervalue4(){
        if(imageView4.isAnimating == true){
            imageView4.stopAnimating()
            imageView0.isHidden = false
        }else{
            imageView0.isHidden = false
        }
        
    }
    
    //Func of Timing for Animation while pressed on image bottom Left
    @objc func timervalue5(){
        if(imageView5.isAnimating == true){
            imageView5.stopAnimating()
            imageView0.isHidden = false
        }else{
            imageView0.isHidden = false
        }
        
    }
    
}
    

