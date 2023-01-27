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
  
  let dataPicker: UIDatePicker = {
    let picker = UIDatePicker()
    picker.preferredDatePickerStyle = .wheels
    picker.datePickerMode = .time
    picker.translatesAutoresizingMaskIntoConstraints = false
    return picker
  }()
  
  let dayTimeLabel: UILabel = {
    let label = UILabel()
    label.text = "Каждый день в"
    label.font = UIFont.systemFont(ofSize: 17)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.translatesAutoresizingMaskIntoConstraints = false
    self.backgroundColor = .systemBackground
    self.addSubview(colorWell)
    self.addSubview(mainLabel)
    self.addSubview(mainTextField)
    self.addSubview(colorLabel)
    self.addSubview(timeLabel)
    self.addSubview(dataPicker)
    self.addSubview(dayTimeLabel)
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
        
        mainLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 21),
        mainLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
        
        mainTextField.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 7),
        mainTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
        mainTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15),
        
        colorLabel.topAnchor.constraint(equalTo: mainTextField.bottomAnchor, constant: 15),
        colorLabel.leftAnchor.constraint(equalTo: mainLabel.leftAnchor),
        
        colorWell.topAnchor.constraint(equalTo: colorLabel.bottomAnchor, constant: 7),
        colorWell.leftAnchor.constraint(equalTo: mainLabel.leftAnchor),
        
        timeLabel.topAnchor.constraint(equalTo: colorWell.bottomAnchor, constant: 15),
        timeLabel.leftAnchor.constraint(equalTo: colorWell.leftAnchor),
        
        dayTimeLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 7),
        dayTimeLabel.leftAnchor.constraint(equalTo: timeLabel.leftAnchor),
        
        dataPicker.topAnchor.constraint(equalTo: dayTimeLabel.bottomAnchor, constant: 15),
        dataPicker.leftAnchor.constraint(equalTo: self.leftAnchor),
        dataPicker.rightAnchor.constraint(equalTo: self.rightAnchor),
        dataPicker.bottomAnchor.constraint(equalTo: self.bottomAnchor)
      ])
    } else {
      print("NotSuperview")
    }
  }
}
