//
//  Example5ViewController.swift
//  CommandSwift
//
//  Created by Matt on 5/24/16.
//  Copyright © 2016 Matt Gillingham. All rights reserved.
//

import UIKit

class AClass {
  var b: BClass?

  deinit {
    print("A deinit")
  }
}

class BClass {
  var a: AClass?

  deinit {
    print("B deinit")
  }
}

protocol ZProtocol {}

struct XStruct: ZProtocol {
  var y: ZProtocol?
  var value: Int = 0
}

struct YStruct: ZProtocol {
  var x: ZProtocol?
  var value: Int = 0
}

struct Test {
  let pointer: UnsafeMutablePointer<Void>
  let padding1: Int
  let padding2: Int
  let padding3: Int
  let padding4: Int
  let padding5: Int8
  var value: Int = 0
}

class Example7ViewController: BaseViewController {
  override func viewDidLoad() {
    let a = AClass()
    let b = BClass()
    a.b = b
    b.a = a

    var x = XStruct()
    var y = YStruct()

    x.y = y
    y.x = x
  }
}