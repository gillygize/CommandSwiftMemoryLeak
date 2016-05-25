//
//  Example1ViewController.swift
//  CommandSwift
//
//  Created by Matt on 5/23/16.
//  Copyright © 2016 Matt Gillingham. All rights reserved.
//

import UIKit
import AVFoundation

class Example1Class {
  init() {
  }

  dynamic func playSound() {
  }
}

class Example1ViewController: BaseViewController {
  init(viewController: ViewController) {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
  }

  func playingSound() {
  }
}

