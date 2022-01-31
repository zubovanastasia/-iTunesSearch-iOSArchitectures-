//
//  SongDetailView.swift
//  iOSArchitecturesDemo
//
//  Created by Anastasiia Zubova on 31.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

 final class SongDetailView: UIView {

     // MARK: - Subviews
     
     let imageView = UIImageView()
     let throbber = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)

     // MARK: - Init
     
     override init(frame: CGRect) {
         super.init(frame: frame)
         self.configureUI()
     }

     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         self.configureUI()
     }

     // MARK: - UI
     
     private func configureUI() {
         self.backgroundColor = .white
         self.addImageView()
         self.addImageViewThrobber()
         self.setupConstraints()
     }

     private func addImageView() {
         self.imageView.translatesAutoresizingMaskIntoConstraints = false
         self.imageView.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
         self.imageView.layer.cornerRadius = 10.0
         self.imageView.layer.masksToBounds = true
         self.addSubview(self.imageView)
     }

     private func addImageViewThrobber() {
         self.throbber.translatesAutoresizingMaskIntoConstraints = false
         self.imageView.addSubview(self.throbber)
     }

     private func setupConstraints() {
         NSLayoutConstraint.activate([
             self.imageView.widthAnchor.constraint(equalToConstant: 100.0),
             self.imageView.heightAnchor.constraint(equalToConstant: 100.0),
             self.imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
             self.imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),

             self.throbber.centerXAnchor.constraint(equalTo: self.centerXAnchor),
             self.throbber.centerYAnchor.constraint(equalTo: self.centerYAnchor)
             ])
     }
 }
