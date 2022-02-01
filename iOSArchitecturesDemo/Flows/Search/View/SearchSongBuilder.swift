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
        let interactor = SearchSongInteractor()
        let router = SearchSongRouter()
        let presenter = SearchSongPresenter(interactor: interactor, router: router)
        let viewController = SearchSongViewController(presenter: presenter)
        router.viewController = viewController
        presenter.viewInput = viewController as! UIViewController & SearchSongViewInput
        
        return viewController as! UIViewController & SearchSongViewInput
    }
}
