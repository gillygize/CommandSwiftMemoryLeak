//
//  Example1ViewController.swift
//  CommandSwift
//
//  Created by Matt on 5/23/16.
//  Copyright © 2016 Matt Gillingham. All rights reserved.
//

import UIKit

class Example2Class {
  var example2Class2 = Example2Class2()
}

class Example2Class2 {
  var viewController: Example2ViewController?
}

class Example2ViewController: BaseViewController {
  let example2Class = Example2Class()

  override func viewDidLoad() {
    example2Class.example2Class2.viewController = self
  }

  deinit {
    print("Example2ViewController deinit")
  }
}
