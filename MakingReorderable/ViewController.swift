//
//  ViewController.swift
//  MakingReorderable
//
//  Created by Ömer Firat on 12.11.2020.
//  Copyright © 2020 Omer Firat. All rights reserved.
//

import UIKit
import Foundation

class Song{
    let name: [String]?
    let artist: String?
    let musicType: String?
    init(artist:String, name:[String]?, musicType: String){
        self.name = name
        self.artist = artist
        self.musicType = musicType
        
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var musicList = [Song]()
    @IBOutlet var tbvMusic: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        tbvMusic.delegate = self
        tbvMusic.dataSource = self
        musicList.append(Song.init(artist: "Claptone", name: ["Heartbeat", "Under The Moon"], musicType: "DeepHouse"))
        musicList.append(Song.init(artist: "Ash", name: ["Mosaique","Lost", "Big in Japan", "Sing It Back"], musicType: "Alternative"))
        musicList.append(Song.init(artist: "emir taha", name:["Kendine Gel", "Baka Baka", "7 cigs" ], musicType: "Jazz"))
        musicList.append(Song.init(artist: "Whilk & Misky", name:["Clap Your Hands", "Oh Brother"], musicType: "R&B"))
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 62
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return musicList.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicList[section].name?.count ?? 0 /// 0 ı hocaya sor
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tbvMusic.dequeueReusableCell(withIdentifier: "MusicCell", for:indexPath)
            as! MusicCell
        
        cell.lblName.text = musicList[indexPath.section].name?[indexPath.row]
        let music = musicList[indexPath.section]
        cell.lblArtist.text = music.artist
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return musicList[section].musicType
    }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        musicList.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        view.tintColor = UIColor.gray
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.black
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    
    @IBAction func didTapSort(){
        if tbvMusic.isEditing{
            tbvMusic.isEditing = false
        }
        else{
            tbvMusic.isEditing = true
        }
    }
    
}


