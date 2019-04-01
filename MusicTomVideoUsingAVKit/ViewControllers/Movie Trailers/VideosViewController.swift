//
//  VideosViewController.swift
//  MusicTomVideoUsingAVKit
//
//  Created by Nikhil Patil on 31/01/19.
//  Copyright © 2019 Nikhil Patil. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideosViewController: UIViewController {
    
    // Variables
    
    var buttonOfImage:UIButton!
    var buttonOfPlay:UIButton!
    
    var videoNameArray : [String] = ["Bahubali Trailer","Bharat Anne Nenu","Nela Ticket"]
    
    var videoArray : [String] = ["https://www.brninfotech.com/media/video/01.mp4","https://www.brninfotech.com/media/video/02.mp4","https://www.brninfotech.com/media/video/03.mp4"]
    
    var tagValue:Int!
    
    var mainViewScrollView:UIScrollView!
    
    var videoPlayer:AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUI()
        // Do any additional setup after loading the view.
    }
    // func for pause the video will changing the tab
    override func viewDidDisappear(_ animated: Bool) {
        self.videoPlayer.player?.pause()
    }
   
    func createUI(){
        
        //ScrollView
        var videoImg:[String] = ["Bahubali","Bharat Ane Nenu","Nela Ticket"]
        // ScrollBar Height
        mainViewScrollView = UIScrollView(frame: CGRect.init(x: 0, y: 0, width: 414, height: 900))
        mainViewScrollView.contentSize = CGSize.init(width: 414, height: 1500)
        view.addSubview(mainViewScrollView)
        
        // Trailer Image Button and On Screen Play Button Created using loop
        var d = 40
        var e = 376
        
        for a in 0...2{
            //Trailer Image Button
            buttonOfImage = UIButton()
            buttonOfImage.frame = CGRect.init(x: 40, y: d, width: 334, height: 330)
            buttonOfImage.setImage(UIImage(named: videoImg[a]), for: .normal)
            
            buttonOfImage.tag = a
            mainViewScrollView.addSubview(buttonOfImage)
            
            buttonOfImage.addTarget(self, action: #selector(videoPlayOnNVC), for: .touchUpInside)
            
            //On Scren Play Button
            buttonOfPlay = UIButton(type: .custom)
            buttonOfPlay.frame = CGRect.init(x: 40, y: e, width: 334, height: 50)
            buttonOfPlay.setImage(UIImage(named: ""), for: .normal)
            buttonOfPlay.layer.cornerRadius = 20.0
            buttonOfPlay.setTitle("\(videoImg[a])", for: .normal)
            buttonOfPlay.semanticContentAttribute = .forceRightToLeft
            buttonOfPlay.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            buttonOfPlay.tag = a
            
            mainViewScrollView.addSubview(buttonOfPlay)
            
            buttonOfPlay.addTarget(self, action: #selector(videoPlayOnScreen), for: .touchUpInside)
            print("\(a)  \(d)")
            d = d+400
            e = e+400
            
        }
        
    }
    
    // Action Function For play Trailer Video to New ViewController
    @objc func videoPlayOnNVC(value:UIButton!){
        
        tagValue = value.tag
    
        if((videoPlayer) != nil){
            videoPlayer.view.removeFromSuperview()
        }
        videoPlayer = AVPlayerViewController()
        videoPlayer.player = AVPlayer(url: URL(string: videoArray[tagValue])!)
        
        present(videoPlayer, animated: true) {
            self.videoPlayer.player?.play()
        }
    }
    
    // Action Function For play Trailer Video to Same Screen Image View Dimension
    @objc func videoPlayOnScreen(value:UIButton!){
        
        tagValue = value.tag
        
        if((videoPlayer) != nil){
            videoPlayer.view.removeFromSuperview()
        }
        videoPlayer = AVPlayerViewController()
        videoPlayer.player = AVPlayer(url: URL(string: videoArray[tagValue])!)
        
        switch tagValue {
        case 0:
            videoPlayer.view.frame = CGRect.init(x: 40, y: 40, width: 334, height: 334)
        case 1:
            videoPlayer.view.frame = CGRect.init(x: 40, y: 440, width: 334, height: 334)
        case 2:
            videoPlayer.view.frame = CGRect.init(x: 40, y: 840, width: 334, height: 334)
        
        default:
            print("nothing")
        }
        
        mainViewScrollView.addSubview(videoPlayer.view)
        self.videoPlayer.player?.play()
        
        
    }
    

}
