//
//  Example5ViewController.swift
//  CommandSwift
//
//  Created by Matt on 5/24/16.
//  Copyright © 2016 Matt Gillingham. All rights reserved.
//

import UIKit

class MClass {
  var string: String? = nil
  var array: [Int]? = nil
}

struct NStruct {
  var string: String?
  var array: [Int]? = nil
}

class Example8ViewController: BaseViewController {
  override func viewDidLoad() {
    let m = MClass()
    m.string = "1"
    m.array = [0, 1]

    let m2 = m

    let mBlock = {
      m.string = "2"
      m.array![0] = 1
    }
    mBlock()

    print("m.string = \(m.string)")
    print("m.array = \(m.array)")

    print("m2.string = \(m2.string)")
    print("m2.array = \(m2.array)")

    var n = NStruct()
    n.string = "1"
    n.array = [0, 1]

    let n2 = n
    let nBlock = {
      n.string = "2"
      n.array![0] = 1
    }
    nBlock()

    print("n.string = \(n.string)")
    print("n.array = \(m.array)")

    print("o.string = \(n2.string)")
    print("o.array = \(n2.array)")
  }
}