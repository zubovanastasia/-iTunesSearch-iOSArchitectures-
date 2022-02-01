//
//  SearchRouter.swift
//  iOSArchitecturesDemo
//
//  Created by Anastasiia Zubova on 01.02.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

protocol SearchRouterInput {
    func openDetails(for app: ITunesApp)
    func openAppInItunes(app: ITunesApp)
}

final class SearchRouter: SearchRouterInput {
    weak var viewController: UIViewController?
    
    func openDetails(for app: ITunesApp) {
        let appDetailViewController = AppDetailViewController(app: app)
        self.viewController?.navigationController?.pushViewController(appDetailViewController, animated: true)
    }
    
    func openAppInItunes(app: ITunesApp) {
        guard let urlString = app.appUrl,
              let url = URL(string: urlString) else {
                  return
              }
        
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
