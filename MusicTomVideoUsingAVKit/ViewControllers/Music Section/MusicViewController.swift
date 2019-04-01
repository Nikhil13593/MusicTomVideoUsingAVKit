//
//  MusicViewController.swift
//  MusicTomVideoUsingAVKit
//
//  Created by Nikhil Patil on 31/01/19.
//  Copyright © 2019 Nikhil Patil. All rights reserved.
//

import UIKit
import AVKit

class MusicViewController: UIViewController {

    // Image Variable Outlet
    @IBOutlet weak var album1: UIImageView!
    @IBOutlet weak var album2: UIImageView!
    @IBOutlet weak var album3: UIImageView!
    
    //Songs stored by Listed to play by position
    var songsListed1:[String] = ["Chaandaniya","Tum hi ho","Babu rao"]
    var songsListed2:[String] = ["Iski Uski","Piya aye na","I am in Love"]
    var songsListed3:[String] = ["Locha E Ulfat","Bhula Dena","Tum jo aaye"]
    var songsListed4:[String] = ["Mast Magan","Sun raha hai na","Pee Loon"]
    var songsListed5:[String] = ["Offo","Chahun main ya na","Parda"]
    
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        roundedImage(imagePropertyName: album1)
        roundedImage(imagePropertyName: album2)
        roundedImage(imagePropertyName: album3)
        // Do any additional setup after loading the view.
    }
    
    // Func make Image Corner Circular
    
    func roundedImage(imagePropertyName: UIImageView){
        
        imagePropertyName.layer.borderWidth = 1
        imagePropertyName.layer.masksToBounds = false
        imagePropertyName.layer.borderColor = UIColor.black.cgColor
        imagePropertyName.layer.cornerRadius = imagePropertyName.frame.height/4
        imagePropertyName.clipsToBounds = true
        
    }
    
    // Audio Play Func
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
    
    // Button Action for Display Album Songs List To Play
    @IBAction func twoState(_ sender: UIButton) {
        
        let songListVC = self.storyboard?.instantiateViewController(withIdentifier: "SongListViewController" ) as! SongListViewController!
        self.present(songListVC!, animated: true, completion: nil)
        
        songListVC?.albumImages.image = #imageLiteral(resourceName: "2 states2")
        songListVC?.movieName.text = "Two States Songs :-"
        songListVC?.song1Name.text = songsListed1[0]
        songListVC?.song2Name.text = songsListed2[0]
        songListVC?.song3Name.text = songsListed3[0]
        songListVC?.song4Name.text = songsListed4[0]
        songListVC?.song5Name.text = songsListed5[0]
    }
    
    // Button Action for Display Album Songs List To Play
    @IBAction func AashiquiTwo(_ sender: UIButton) {
        
        
        let songListVC = self.storyboard?.instantiateViewController(withIdentifier: "SongListViewController" ) as! SongListViewController!
        self.present(songListVC!, animated: true, completion: nil)
        
        songListVC?.albumImages.image = #imageLiteral(resourceName: "A@")
        songListVC?.movieName.text = "Aashiqui Two Songs :-"
        songListVC?.song1Name.text = songsListed1[1]
        songListVC?.song2Name.text = songsListed2[1]
        songListVC?.song3Name.text = songsListed3[1]
        songListVC?.song4Name.text = songsListed4[1]
        songListVC?.song5Name.text = songsListed5[1]
        
    }
    
    // Button Action for Display Album Songs List To Play
    @IBAction func OUTIM(_ sender: UIButton) {
        
        let songListVC = self.storyboard?.instantiateViewController(withIdentifier: "SongListViewController" ) as! SongListViewController!
        self.present(songListVC!, animated: true, completion: nil)
        
        songListVC?.albumImages.image = #imageLiteral(resourceName: "OUTIM1")
        songListVC?.movieName.text = "Once Upon Time in Mumbai Songs :-"
        songListVC?.song1Name.text = songsListed1[2]
        songListVC?.song2Name.text = songsListed2[2]
        songListVC?.song3Name.text = songsListed3[2]
        songListVC?.song4Name.text = songsListed4[2]
        songListVC?.song5Name.text = songsListed5[2]
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
