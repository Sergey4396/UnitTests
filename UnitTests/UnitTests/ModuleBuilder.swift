//
//  ModuleBuilder.swift
//  UnitTests
//
//  Created by Macbook on 29.05.2020.
//  Copyright © 2020 self. All rights reserved.
//

import Foundation
import UIKit

protocol Builder {
    static func createMain() -> UIViewController
}

class ModelBuilder: Builder{
    
    static func createMain() -> UIViewController {
        let person = Person(firstName: "David", lastName: "Blain")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, person: person)
        view.presenter = presenter
        return view
    }
    
    
}
