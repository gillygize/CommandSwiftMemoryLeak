//
//  ViewController.swift
//  CommandSwift
//
//  Created by Matt on 5/23/16.
//  Copyright © 2016 Matt Gillingham. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  override func loadView() {
    view = UIView(frame: UIScreen.mainScreen().bounds)

    let tableView = UITableView(frame: view.bounds)
    tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: String(UITableViewCell))
    tableView.delegate = self
    tableView.dataSource = self
    view.addSubview(tableView)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  func sendNotification() {
    NSNotificationCenter.defaultCenter().postNotificationName("PlaySound", object: nil)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 8
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier(String(UITableViewCell), forIndexPath: indexPath)
    cell.textLabel?.text = "Example \(indexPath.row+1)"
    return cell
  }

  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let viewController: UIViewController

    switch indexPath.row + 1 {
      case 1:
        viewController = Example1ViewController(viewController: self)
      case 2:
        viewController = Example2ViewController()
      case 3:
        viewController = Example3ViewController()
      case 4:
        viewController = Example4ViewController()
      case 5:
        viewController = Example5ViewController()
      case 6:
        viewController = Example6ViewController()
      case 7:
        viewController = Example7ViewController()
      default:
        viewController = UIViewController()
    }

    self.navigationController?.pushViewController(viewController, animated: true)
  }
}

