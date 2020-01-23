//
//  ViewController.swift
//  ImageViewer_App
//
//  Created by DDDD on 21/01/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                // this is a picture that needs to be loaded
                pictures.append(item)
            }
        }
        
        print(pictures)
    }


}

