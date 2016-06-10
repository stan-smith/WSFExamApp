//
//  people.swift
//  ExamApp
//
//  Created by STN SDA on 10/06/2016.
//  Copyright © 2016 Web School Factory. All rights reserved.
//

import Foundation
import Alamofire

struct People {
    
    //name, height, mass
    let name: String
    let height: String
    let mass: String

    
    
    init(dict: Dictionary<String, AnyObject>) {
        
        //Les infos de base
        name = dict["name"] as! String
        height = dict["height"] as! String
        mass = dict["mass"] as! String
    
    }
}

//MARK: Remote functions
extension People {
    static func getRemoteComics(offset: Int, completionHandler: Response<AnyObject, NSError> -> Void) {

        
        let param: [String : AnyObject] = ["offset" : offset]
        
        Alamofire.request(.GET, "http://swapi.co/api/people/?format=json", parameters: param).responseJSON { response in
            
            completionHandler(response)
        }
    }
    
    
}