//
//  Example5ViewController.swift
//  CommandSwift
//
//  Created by Matt on 5/24/16.
//  Copyright © 2016 Matt Gillingham. All rights reserved.
//

import UIKit

class Example6ViewController: BaseViewController {
  override func viewDidLoad() {
    dispatch_after(
      dispatch_time(
        DISPATCH_TIME_NOW, 5 * Int64(NSEC_PER_SEC)
      ),
      dispatch_get_main_queue()
    ) {
      self.printHello()
    }
  }

  func printHello() {
    print("hello")
  }

  deinit {
    print("Example6ViewController deinit")
  }
}