//
//  FirstViewController.swift
//  ExamApp
//
//  Created by Iman Zarrabian on 07/06/16.
//  Copyright © 2016 Web School Factory. All rights reserved.
//

import UIKit

class PeoplesViewController: UIViewController {
    
    var peoplesArray: [People] = []
    //computed properties
    var peoplesOffset: Int {
        return peoplesArray.count
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    

}

