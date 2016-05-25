//
//  BaseViewController.swift
//  CommandSwift
//
//  Created by Matt on 5/24/16.
//  Copyright © 2016 Matt Gillingham. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
  override func loadView() {
    view = UIView(frame: UIScreen.mainScreen().bounds)
    view.backgroundColor = UIColor.whiteColor()
  }
}