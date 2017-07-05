//
//  ViewController.swift
//  Cau 5
//
//  Created by Cntt10 on 7/5/17.
//  Copyright © 2017 theswiftproject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let person = Person(fullName: "Bui Tan Hien")
        
        print (person.fullName)
        
        let xyz1 = XYZ(name: "Tan Hien", prefix: nil)
        print(xyz1.fullName)
        
        let xyz2 = XYZ(name: "Tan Hien", prefix: "Bui")
        print(xyz2.fullName)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

protocol FullyNamed {
    var fullName: String { get }
}
struct Person: FullyNamed {
    var fullName: String
}
class XYZ: FullyNamed {
    var prefix: String?
    var name: String
    
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    
    var fullName: String {
        if prefix != nil {
            return prefix! + " " + name
        } else {
            return name
        }
    }
}
