//
//  Example1ViewController.swift
//  CommandSwift
//
//  Created by Matt on 5/23/16.
//  Copyright © 2016 Matt Gillingham. All rights reserved.
//

import UIKit

class Example4Class {
//  var viewController: Example4ViewController?
}

class Example4ViewController: BaseViewController {
//  let example4Class: Example4Class = Example4Class()

  override func viewDidLoad() {
//    example4Class.viewController = self
//    self.performSelector(#selector(Example4ViewController.breakCycle), withObject: nil, afterDelay: 5.0)
  }

  func breakCycle() {
//    example4Class.viewController = nil
  }

  deinit {
//    print("Example4ViewController deinit")
  }
}

