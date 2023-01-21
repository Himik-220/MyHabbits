//
//  ViewController.swift
//  MyHabits
//
//  Created by Leonid Shchipkov on 17.01.2023.
//

import UIKit

class HabitsViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let addButton = UIBarButtonItem(title: nil, image: UIImage(systemName: "plus"), target: self, action: #selector(addHabits))
    navigationItem.rightBarButtonItem = addButton
  }
  
  @objc func addHabits() {
    
  }
}
