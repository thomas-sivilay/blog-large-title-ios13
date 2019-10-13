//
//  UIViewController+LargeTitle.swift
//  ios13-large-title-glitch
//
//  Created by thomas on 14/10/19.
//  Copyright © 2019 thomas. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setLargeTitleDisplayMode(_ largeTitleDisplayMode: UINavigationItem.LargeTitleDisplayMode) {
        switch largeTitleDisplayMode {
        case .automatic:
            guard let navigationController = navigationController else { break }
            setLargeTitleDisplayMode(navigationController.navigationBar.prefersLargeTitles ? .always : .never)
        case .always, .never:
            navigationItem.largeTitleDisplayMode = largeTitleDisplayMode
            // Even when .never, needs to be true otherwise animation will be broken on iOS11, 12, 13
            navigationController?.navigationBar.prefersLargeTitles = true
        @unknown default:
            assertionFailure("\(#function): Missing handler for \(largeTitleDisplayMode)")
        }
    }
}
