//
//  MainPresentor.swift
//  UnitTests
//
//  Created by Macbook on 29.05.2020.
//  Copyright © 2020 self. All rights reserved.
//

import Foundation

protocol MainViewProtocol: class {
    func setGreeting(greeting: String)
}

protocol MainViewPresenterProtocol: class {
    init(view:MainViewProtocol, person:Person) {
    func showGreeting()
    }
}
