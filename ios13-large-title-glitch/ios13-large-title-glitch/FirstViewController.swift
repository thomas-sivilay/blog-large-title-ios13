//
//  FirstViewController.swift
//  ios13-large-title-glitch
//
//  Created by thomas on 13/10/19.
//  Copyright © 2019 thomas. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var titleDisplayModeLabel: UILabel!
    @IBOutlet weak var prefersLargeTitlesLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.navigationBar.prefersLargeTitles = true
        
        titleDisplayModeLabel.text = "titleDisplayMode = \(navigationController!.navigationItem.largeTitleDisplayMode.stringValue)"
        prefersLargeTitlesLabel.text = "prefersLargeTitlesLabel = \(navigationController!.navigationBar.prefersLargeTitles)"
    }
}
