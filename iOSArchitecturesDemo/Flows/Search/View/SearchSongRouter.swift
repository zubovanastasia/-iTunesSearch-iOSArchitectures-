//
//  SearchSongRouter.swift
//  iOSArchitecturesDemo
//
//  Created by Anastasiia Zubova on 01.02.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

protocol SearchSongRouterInput {
    func openDetails(for song: ITunesSong)
}

class SearchSongRouter: SearchSongRouterInput {
    weak var viewController: UIViewController?
    
    func openDetails(for song: ITunesSong) {
        let songDetailViewController = SongDetailViewController(song: song)
        viewController?.navigationController?.pushViewController(songDetailViewController, animated: true)
    }
}
