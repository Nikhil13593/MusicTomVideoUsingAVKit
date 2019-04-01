//
//  SongListViewController.swift
//  MusicTomVideoUsingAVKit
//
//  Created by Nikhil Patil on 31/01/19.
//  Copyright © 2019 Nikhil Patil. All rights reserved.
//

import UIKit
import AVKit

class SongListViewController: UIViewController {

    // Oulet Variables
    @IBOutlet weak var song1Image: UIImageView!
    
    @IBOutlet weak var song2Image: UIImageView!
    
    @IBOutlet weak var song3Image: UIImageView!
    
    @IBOutlet weak var song4Image: UIImageView!
    
    @IBOutlet weak var song5Image: UIImageView!
    
    @IBOutlet weak var albumImages: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var song1Name: UILabel!
    
    @IBOutlet weak var song2Name: UILabel!
    
    @IBOutlet weak var song3Name: UILabel!
    
    @IBOutlet weak var song4Name: UILabel!
    
    @IBOutlet weak var song5Name: UILabel!
    
    var audioPlayer : AVAudioPlayer!
    
    var musicViewControllerObject = MusicViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundedImage(imagePropertyName: albumImages)
        
        // Do any additional setup after loading the view.
    }

    // Func make Image Corner Circular
    
    func roundedImage(imagePropertyName: UIImageView){
        
        imagePropertyName.layer.borderWidth = 1
        imagePropertyName.layer.masksToBounds = false
        imagePropertyName.layer.borderColor = UIColor.black.cgColor
        imagePropertyName.layer.cornerRadius = imagePropertyName.frame.height/3
        imagePropertyName.clipsToBounds = true
        
    }
    
    // Button Action to play and pause with Images(Normal & Highlighted)
    @IBAction func Song1Btn(_ sender: UIButton) {
        
        if song1Name.text! == musicViewControllerObject.songsListed1[0]
        {
            song2Image.isHighlighted = false
            song3Image.isHighlighted = false
            song4Image.isHighlighted = false
            song5Image.isHighlighted = false
            
            if(song1Image.isHighlighted == false){
                song1Image.isHighlighted = true
            playSound(file: "Chaandaniya(Mr-Jatt1.com)", ext: "mp3")
            
            }else{
                audioPlayer.pause()
                song1Image.isHighlighted = false
            }
            
        }else if song1Name.text! == musicViewControllerObject.songsListed1[1]
        {
            song2Image.isHighlighted = false
            song3Image.isHighlighted = false
            song4Image.isHighlighted = false
            song5Image.isHighlighted = false
            if(song1Image.isHighlighted == false){
                song1Image.isHighlighted = true
                playSound(file: "Tum Hi Ho-(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song1Image.isHighlighted = false
            }
            
        }else if song1Name.text! == musicViewControllerObject.songsListed1[2]
        {
            song2Image.isHighlighted = false
            song3Image.isHighlighted = false
            song4Image.isHighlighted = false
            song5Image.isHighlighted = false
            if(song1Image.isHighlighted == false){
                song1Image.isHighlighted = true
                playSound(file: "Babu Rao-(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song1Image.isHighlighted = false
            }
            
        }
        
    }
    
    // Button Action to play and pause with Images(Normal & Highlighted)
    @IBAction func song2Btn(_ sender: UIButton) {
        
        if song2Name.text! == musicViewControllerObject.songsListed2[0]
        {
            song1Image.isHighlighted = false
            song3Image.isHighlighted = false
            song4Image.isHighlighted = false
            song5Image.isHighlighted = false
            
            if(song2Image.isHighlighted == false){
                song2Image.isHighlighted = true
                playSound(file: "Iski Uski-(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song2Image.isHighlighted = false
            }
            
        }else if song2Name.text! == musicViewControllerObject.songsListed2[1]
        {
            song1Image.isHighlighted = false
            song3Image.isHighlighted = false
            song4Image.isHighlighted = false
            song5Image.isHighlighted = false
            
            if(song2Image.isHighlighted == false){
                song2Image.isHighlighted = true
                playSound(file: "Piya Aaye Na -(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song2Image.isHighlighted = false
            }
            
        }else if song2Name.text! == musicViewControllerObject.songsListed2[2]
        {
            song1Image.isHighlighted = false
            song3Image.isHighlighted = false
            song4Image.isHighlighted = false
            song5Image.isHighlighted = false
            
            if(song2Image.isHighlighted == false){
                song2Image.isHighlighted = true
                playSound(file: "I Am In Love - Karthik-(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song2Image.isHighlighted = false
            }
            
        }
    }

    // Button Action to play and pause with Images(Normal & Highlighted)
    @IBAction func song3Btn(_ sender: Any) {
        
        if song3Name.text! == musicViewControllerObject.songsListed3[0]
        {
            song1Image.isHighlighted = false
            song2Image.isHighlighted = false
            song4Image.isHighlighted = false
            song5Image.isHighlighted = false
            
            if(song3Image.isHighlighted == false){
                song3Image.isHighlighted = true
                playSound(file: "Locha E Ulfat -(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song3Image.isHighlighted = false
            }
            
            
        }else if song3Name.text! == musicViewControllerObject.songsListed3[1]
        {
            song1Image.isHighlighted = false
            song2Image.isHighlighted = false
            song4Image.isHighlighted = false
            song5Image.isHighlighted = false
            
            if(song3Image.isHighlighted == false){
                song3Image.isHighlighted = true
                playSound(file: "Bhula Dena-(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song3Image.isHighlighted = false
            }
            
        }else if song3Name.text! == musicViewControllerObject.songsListed3[2]
        {
            song1Image.isHighlighted = false
            song2Image.isHighlighted = false
            song4Image.isHighlighted = false
            song5Image.isHighlighted = false
            
            if(song3Image.isHighlighted == false){
                song3Image.isHighlighted = true
                playSound(file: "Tum Jo Aaye-(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song3Image.isHighlighted = false
            }
            
        }
    }
    
    // Button Action to play and pause with Images(Normal & Highlighted)
    @IBAction func song4Btn(_ sender: UIButton) {
        
        
        if song4Name.text! == musicViewControllerObject.songsListed4[0]
        {
            song1Image.isHighlighted = false
            song2Image.isHighlighted = false
            song3Image.isHighlighted = false
            song5Image.isHighlighted = false
            
            if(song4Image.isHighlighted == false){
                song4Image.isHighlighted = true
                playSound(file: "Mast Magan -(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song4Image.isHighlighted = false
            }
            
            
        }else if song4Name.text! == musicViewControllerObject.songsListed4[1]
        {
            song1Image.isHighlighted = false
            song2Image.isHighlighted = false
            song3Image.isHighlighted = false
            song5Image.isHighlighted = false
            
            if(song4Image.isHighlighted == false){
                song4Image.isHighlighted = true
                playSound(file: "Sunn Raha Hai-(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song4Image.isHighlighted = false
            }
            
        }else if song4Name.text! == musicViewControllerObject.songsListed4[2]
        {
            song1Image.isHighlighted = false
            song2Image.isHighlighted = false
            song3Image.isHighlighted = false
            song5Image.isHighlighted = false
            
            if(song4Image.isHighlighted == false){
                song4Image.isHighlighted = true
                playSound(file: "Pee Loon-(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song4Image.isHighlighted = false
            }
        }
    }
    
    // Button Action to play and pause with Images(Normal & Highlighted)
    @IBAction func song5Btn(_ sender: UIButton) {
        
        
        if song5Name.text! == musicViewControllerObject.songsListed5[0]
        {
            song1Image.isHighlighted = false
            song2Image.isHighlighted = false
            song3Image.isHighlighted = false
            song4Image.isHighlighted = false
            
            if(song5Image.isHighlighted == false){
                song5Image.isHighlighted = true
                playSound(file: "Offo -(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song5Image.isHighlighted = false
            }
            
            
        }else if song5Name.text! == musicViewControllerObject.songsListed5[1]
        {
            song1Image.isHighlighted = false
            song2Image.isHighlighted = false
            song3Image.isHighlighted = false
            song4Image.isHighlighted = false
            
            if(song5Image.isHighlighted == false){
                song5Image.isHighlighted = true
                playSound(file: "Chahun Main Ya Naa-(Mr-Jatt.com)", ext: "mp3")
            }else{
                audioPlayer.pause()
                song5Image.isHighlighted = false
            }
            
        }else if song5Name.text! == musicViewControllerObject.songsListed5[2]
        {
            song1Image.isHighlighted = false
            song2Image.isHighlighted = false
            song3Image.isHighlighted = false
            song4Image.isHighlighted = false
            
            if(song5Image.isHighlighted == false){
                song5Image.isHighlighted = true
                playSound(file: "Parda-(Mr-Jatt.com)", ext: "mp3")
                
            }else{
                audioPlayer.pause()
                song5Image.isHighlighted = false
            }
            
        }
    }
    
    // function for Play song using AVAudioPlayer
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
    
    // Button Action for go back to previous ViewController
    @IBAction func backBtn(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    

   
}
