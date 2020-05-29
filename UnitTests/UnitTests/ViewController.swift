//
//  ViewController.swift
//  UnitTests
//
//  Created by Macbook on 29.05.2020.
//  Copyright © 2020 self. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
//MARK: IBOutlet
    @IBOutlet weak var greetingLabel: UILabel!
    var presenter : MainViewPresenterProtocol!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButtonAction(_ sender:Any){
        self.presenter.showGreeting()
    }
    
}

extension MainViewController: MainViewProtocol{
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
    
    
}
