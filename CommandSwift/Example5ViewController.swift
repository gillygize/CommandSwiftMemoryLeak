//
//  Example5ViewController.swift
//  CommandSwift
//
//  Created by Matt on 5/24/16.
//  Copyright © 2016 Matt Gillingham. All rights reserved.
//

import UIKit

class Example5ViewController: BaseViewController {
//  var callback: (()->())?

  override func viewDidLoad() {
//    let button = UIButton(type: .System)
//    button.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
//    button.center = view.center
//    button.setTitle("Say Hello", forState: .Normal)
//    button.addTarget(self,
//      action: #selector(Example5ViewController.buttonPressed(_:)),
//      forControlEvents: .TouchUpInside
//    )
//    view.addSubview(button)
//
//    self.callback = {
//      self.printHello()
//    }
  }

  func printHello() {
//    print("hello")
  }

  func buttonPressed(button: UIButton) {
//    self.callback!()
  }

  deinit {
//    print("Example5ViewController deinit")
  }
}