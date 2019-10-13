//
//  SecondViewController.swift
//  ios13-large-title-glitch
//
//  Created by thomas on 13/10/19.
//  Copyright © 2019 thomas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.prefersLargeTitles = false
    }

}
