//
//  AppDetailWhatsNewViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Anastasiia Zubova on 31.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

class AppDetailWhatsNewViewController: UIViewController {
    
    private let app: ITunesApp
    
    private var appDetailWhatsNewView: AppDetailWhatsNewView {
        return self.view as! AppDetailWhatsNewView
    }
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = AppDetailWhatsNewView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillData()
    }
    
    private func fillData() {
        appDetailWhatsNewView.titleLabel.text = "Что нового"
        appDetailWhatsNewView.versionLabel.text = "Версия \(app.version ?? "0.0.0")"
        appDetailWhatsNewView.lastUpdatedLabel.text = app.currentVersionReleaseDate
        appDetailWhatsNewView.updateInfoLabel.text = app.releaseNotes
    }
}
