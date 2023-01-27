//
//  AddHabitsViewController.swift
//  MyHabits
//
//  Created by Leonid Shchipkov on 27.01.2023.
//

import UIKit

class AddHabitsViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Создать"
    view.addSubview(AddHabirsUIScrollView())
  }
}
