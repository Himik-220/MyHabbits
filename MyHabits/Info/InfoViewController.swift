//
//  InfoViewController.swift
//  MyHabits
//
//  Created by Leonid Shchipkov on 21.01.2023.
//

import UIKit

class InfoViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Информация"
    view.backgroundColor = .systemBackground
    view.addSubview(InfoUIScrollView())
  }
}
