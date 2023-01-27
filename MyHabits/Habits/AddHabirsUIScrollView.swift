//
//  AddHabirsUIView.swift
//  MyHabits
//
//  Created by Leonid Shchipkov on 27.01.2023.
//

import UIKit

class AddHabirsUIScrollView: UIScrollView {
  let mainLabel: UILabel = {
    let label = UILabel()
    label.text = "Название"
    label.font = UIFont.systemFont(ofSize: 13)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let mainTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "Бегать по утрам, спать 8 часов и т.п."
    textField.font = UIFont.systemFont(ofSize: 17)
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()
  
  let colorLabel: UILabel = {
    let label = UILabel()
    label.text = "Цвет"
    label.font = UIFont.systemFont(ofSize: 13)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let colorWell: UIColorWell = {
    let color = UIColorWell()
    color.translatesAutoresizingMaskIntoConstraints = false
    return color
  }()
  
  let timeLabel: UILabel = {
    let label = UILabel()
    label.text = "Время"
    label.font = UIFont.systemFont(ofSize: 13)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(colorWell)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    if let strongSuperView = superview {
      NSLayoutConstraint.activate([
        self.topAnchor.constraint(equalTo: strongSuperView.safeAreaLayoutGuide.topAnchor),
        self.leftAnchor.constraint(equalTo: strongSuperView.safeAreaLayoutGuide.leftAnchor),
        self.rightAnchor.constraint(equalTo: strongSuperView.safeAreaLayoutGuide.rightAnchor),
        self.bottomAnchor.constraint(equalTo: strongSuperView.safeAreaLayoutGuide.bottomAnchor),
        
        colorWell.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        colorWell.centerYAnchor.constraint(equalTo: self.centerYAnchor),
      ])
    } else {
      print("NotSuperview")
    }
  }
}
