//
//  SecondViewController.swift
//  ios13-large-title-glitch
//
//  Created by thomas on 13/10/19.
//  Copyright © 2019 thomas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var titleDisplayModeLabel: UILabel!
    @IBOutlet weak var prefersLargeTitlesLabel: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.prefersLargeTitles = false

        titleDisplayModeLabel.text = "titleDisplayMode = \(navigationItem.largeTitleDisplayMode.stringValue)"
        prefersLargeTitlesLabel.text = "prefersLargeTitlesLabel = \(navigationController!.navigationBar.prefersLargeTitles)"
    }
}
