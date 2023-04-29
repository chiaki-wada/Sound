//
//  ViewController.swift
//  Sound
//
//  Created by Chiaki Wada on 2023/04/29.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムを表示する箱をつくる
    @IBOutlet var drumButton: UIButton!
    
    //ピアノを表示する箱をつくる
    @IBOutlet var pianoButton: UIButton!
    
    //ギターを表示する箱をつくる
    @IBOutlet var guitarButton: UIButton!
    
    //ドラムのサウンドファイルを読み込んで、プレイヤーをつくる
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    //ピアノのサウンドファイルを読み込んで、プレイヤーをつくる
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    //ギターのサウンドファイルを読み込んで、プレイヤーをつくる
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
                         
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラムのタッチが始まった時に呼ばれる
    @IBAction func touchDownDrumButton(){
        
        //ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する
        drumSoundPlayer.play()
    }
    
    //ドラムボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpDrumButton() {
        
        //ドラムが鳴っていない画像に切り替える
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    //ピアノのタッチが始まった時に呼ばれる
    @IBAction func touchDownPianoButton(){
        
        //ピアノが鳴っている画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        //ピアノの音を巻き戻す
        pianoSoundPlayer.currentTime = 0
        
        //ピアノの音を再生する
        pianoSoundPlayer.play()
    }
    
    //ピアノボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpPianoButton() {
     
        //ピアノが鳴っていない画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
        
    }
    
    //ギターのタッチが始まった時に呼ばれる
    @IBAction func touchDownGuitarButton(){
        
        //ギターが鳴っている画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        
        //ギターの音を巻き戻す
        guitarSoundPlayer.currentTime = 0
        
        //ギターの音を再生する
        guitarSoundPlayer.play()
    }
    
    //ギターボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpGuitarButton() {
        
        //ギターが鳴っていない画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
}

