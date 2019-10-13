//
//  FirstViewController.swift
//  ios13-large-title-glitch
//
//  Created by thomas on 13/10/19.
//  Copyright © 2019 thomas. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }


}

