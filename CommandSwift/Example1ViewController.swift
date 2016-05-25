//
//  Example1ViewController.swift
//  CommandSwift
//
//  Created by Matt on 5/23/16.
//  Copyright © 2016 Matt Gillingham. All rights reserved.
//

import UIKit
import AVFoundation

enum Example1ClassError: ErrorType {
    case SoundNotFound
}

class Example1Class {
  var viewController: Example1ViewController?
  var audioPlayer: AVAudioPlayer

  init() {
    do {
      guard let assetURL = NSBundle.mainBundle().URLForResource("beep", withExtension: "mp3") else { throw Example1ClassError.SoundNotFound }
      audioPlayer = try AVAudioPlayer(contentsOfURL: assetURL, fileTypeHint: AVFileTypeMPEGLayer3)
    } catch {
      audioPlayer = AVAudioPlayer()
    }
    NSNotificationCenter.defaultCenter().addObserver(self,
      selector: #selector(Example1Class.playSound),
      name: "PlaySound",
      object: nil
    )
  }

  dynamic func playSound() {
    audioPlayer.play()
    viewController?.playingSound()
  }
}

class Example1ViewController: BaseViewController {
  let example1Class: Example1Class

  init(viewController: ViewController) {
    example1Class = Example1Class()

    NSTimer.scheduledTimerWithTimeInterval(3.0,
      target: viewController,
      selector: #selector(ViewController.sendNotification),
      userInfo: nil,
      repeats: true
    )

    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    example1Class.viewController = self
  }

  func playingSound() {
    print("playingSound")
  }
}

