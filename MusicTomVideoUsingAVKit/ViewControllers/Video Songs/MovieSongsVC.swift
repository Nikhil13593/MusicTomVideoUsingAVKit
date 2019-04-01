//
//  MovieSongsVC.swift
//  MusicTomVideoUsingAVKit
//
//  Created by Nikhil Patil on 01/02/19.
//  Copyright © 2019 Nikhil Patil. All rights reserved.
//

import UIKit
import AVKit

class MovieSongsVC: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // Button Action For Play Video To New ViewController
    @IBAction func MCABtnAction(_ sender: Any) {
        
        // Set path for Media play
        
        let path = Bundle.main.path(forResource: "nani garu", ofType: "mp4")
        let videoURL = URL(fileURLWithPath: path!)
        let player = AVPlayer(url: videoURL)
        var playerViewController = AVPlayerViewController()
        playerViewController.player = player
        
        present(playerViewController,animated: true){
            
            playerViewController.player?.play()
        }
    }

    // Button Action For Play Video To New ViewController
    @IBAction func govindamSBtnAction(_ sender: Any) {
    
        // Set path for Media play
        
        let path = Bundle.main.path(forResource: "govindam", ofType: "mp4")
        let videoURL = URL(fileURLWithPath: path!)
        let player = AVPlayer(url: videoURL)
        var playerViewController = AVPlayerViewController()
        playerViewController.player = player
        
        present(playerViewController,animated: true){
            
            playerViewController.player?.play()
        }
    }
    

}
