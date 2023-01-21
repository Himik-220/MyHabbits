//
//  InfoUIScrollView.swift
//  MyHabits
//
//  Created by Leonid Shchipkov on 21.01.2023.
//

import UIKit

class InfoUIScrollView: UIScrollView {
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "Привычка за 21 день"
    label.font = UIFont.boldSystemFont(ofSize: 20)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let descriptionLabel: UILabel = {
    let label = UILabel()
    label.text = "Прохождение этапов, за которые за 21 день вырабатывается привычка, подчиняется следующему алгоритму:"
    label.font = UIFont.systemFont(ofSize: 17)
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let firstLabel: UILabel = {
    let label = UILabel()
    label.text = "1. Провести 1 день без обращения к старым привычкам, стараться вести себя так, как будто цель, загаданная в перспективу, находится на расстоянии шага."
    label.font = UIFont.systemFont(ofSize: 17)
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let secondLabel: UILabel = {
    let label = UILabel()
    label.text = "2. Выдержать 2 дня в прежнем состоянии самоконтроля."
    label.font = UIFont.systemFont(ofSize: 17)
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let thirdLabel: UILabel = {
    let label = UILabel()
    label.text = "3. Отметить в дневнике первую неделю изменений и подвести первые итоги — что оказалось тяжело, что — легче, с чем еще предстоит серьезно бороться."
    label.font = UIFont.systemFont(ofSize: 17)
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let fourthLabel: UILabel = {
    let label = UILabel()
    label.text = "4. Поздравить себя с прохождением первого серьезного порога в 21 день. За это время отказ от дурных наклонностей уже примет форму осознанного преодоления и человек сможет больше работать в сторону принятия положительных качеств."
    label.font = UIFont.systemFont(ofSize: 17)
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let fifthLabel: UILabel = {
    let label = UILabel()
    label.text = "5. Держать планку 40 дней. Практикующий методику уже чувствует себя освободившимся от прошлого негатива и двигается в нужном направлении с хорошей динамикой."
    label.font = UIFont.systemFont(ofSize: 17)
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let sixthLabel: UILabel = {
    let label = UILabel()
    label.text = "6. На 90-й день соблюдения техники все лишнее из «прошлой жизни» перестает напоминать о себе, и человек, оглянувшись назад, осознает себя полностью обновившимся."
    label.font = UIFont.systemFont(ofSize: 17)
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = .systemBackground
    self.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(titleLabel)
    self.addSubview(descriptionLabel)
    self.addSubview(firstLabel)
    self.addSubview(secondLabel)
    self.addSubview(thirdLabel)
    self.addSubview(fourthLabel)
    self.addSubview(fifthLabel)
    self.addSubview(sixthLabel)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    if let strongSuperView = superview {
      NSLayoutConstraint.activate([
        self.centerXAnchor.constraint(equalTo: strongSuperView.safeAreaLayoutGuide.centerXAnchor),
        self.centerYAnchor.constraint(equalTo: strongSuperView.safeAreaLayoutGuide.centerYAnchor),
        self.widthAnchor.constraint(equalTo: strongSuperView.safeAreaLayoutGuide.widthAnchor),
        self.heightAnchor.constraint(equalTo: strongSuperView.safeAreaLayoutGuide.heightAnchor),
        
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 22),
        titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
        
        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
        descriptionLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor),
        descriptionLabel.rightAnchor.constraint(equalTo: strongSuperView.rightAnchor, constant: -16),
        
        firstLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 12),
        firstLabel.leftAnchor.constraint(equalTo: descriptionLabel.leftAnchor),
        firstLabel.rightAnchor.constraint(equalTo: descriptionLabel.rightAnchor),
        
        secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 12),
        secondLabel.leftAnchor.constraint(equalTo: descriptionLabel.leftAnchor),
        secondLabel.rightAnchor.constraint(equalTo: descriptionLabel.rightAnchor),
        
        thirdLabel.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 12),
        thirdLabel.leftAnchor.constraint(equalTo: descriptionLabel.leftAnchor),
        thirdLabel.rightAnchor.constraint(equalTo: descriptionLabel.rightAnchor),
        
        fourthLabel.topAnchor.constraint(equalTo: thirdLabel.bottomAnchor, constant: 12),
        fourthLabel.leftAnchor.constraint(equalTo: descriptionLabel.leftAnchor),
        fourthLabel.rightAnchor.constraint(equalTo: descriptionLabel.rightAnchor),
        
        fifthLabel.topAnchor.constraint(equalTo: fourthLabel.bottomAnchor, constant: 12),
        fifthLabel.leftAnchor.constraint(equalTo: descriptionLabel.leftAnchor),
        fifthLabel.rightAnchor.constraint(equalTo: descriptionLabel.rightAnchor),
        
        sixthLabel.topAnchor.constraint(equalTo: fifthLabel.bottomAnchor, constant: 12),
        sixthLabel.leftAnchor.constraint(equalTo: descriptionLabel.leftAnchor),
        sixthLabel.rightAnchor.constraint(equalTo: descriptionLabel.rightAnchor),
        sixthLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12)
      ])
    } else {
      print("Not superview")
    }
  }
}
