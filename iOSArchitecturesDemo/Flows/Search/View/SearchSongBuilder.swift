//
//  SearchSongBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by Anastasiia Zubova on 31.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

class SearchSongBuilder {
    static func build() -> (UIViewController & SearchSongViewInput) {
        let presenter = SearchSongPresenter()
        let viewController = SearchSongViewController(presenter: presenter)
        presenter.viewInput = viewController
        
        return viewController
    }
}
