//
//  ViewController.swift
//  youTubePlayer
//
//  Created by shailesh on 13/10/18.
//  Copyright © 2018 Shailesh. All rights reserved.
//

import UIKit
import YouTubePlayer_Swift

class ViewController: UIViewController {
    
   @IBOutlet weak var videoView: YouTubePlayerView!
    //    https://www.youtube.com/watch?v=CXSwNIPsyTs&list=PLRAV69dS1uWSZJXa62hmOUKLnOZqxYrn9
    
    //    CXSwNIPsyTs   - videoID
    //    PLRAV69dS1uWSZJXa62hmOUKLnOZqxYrn9    -   playlistID
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.backgroundColor = UIColor.blue
        self.navigationController?.view.backgroundColor = UIColor.clear
        self.navigationController?.navigationBar.topItem?.title = "YouTube Player"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func previousTapped(_ sender: Any) {
        videoView.previousVideo()
    }
    
    @IBAction func nextTapped(_ sender: Any) {
        videoView.nextVideo()
    }
    
    @IBAction func playTapped(_ sender: UIButton) {
        if sender.isSelected {
            sender.setTitle("Pause", for: .selected)
            videoView.pause()
        }else {
            sender.setTitle("Play", for: .normal)
            videoView.play()
        }
    }
    
    @IBAction func loadVideo(_ sender: Any) {
        let myVideo: String = "CXSwNIPsyTs"
        videoView.loadVideoID(myVideo)
    }
    
    @IBAction func loadPlaylist(_ sender: Any) {
        let myPlaylist: String = "PLRAV69dS1uWSZJXa62hmOUKLnOZqxYrn9"
        videoView.loadPlaylistID(myPlaylist)
    }
    

}

