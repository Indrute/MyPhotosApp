//
//  SecondView.swift
//  MyPhotosApp
//
//  Created by Indre on 25/07/17.
//  Copyright © 2017 Indre. All rights reserved.
//

import Cocoa

class SecondView: NSViewController {

    @IBOutlet weak var imgView: NSImageView!
    
    var viewImage = NSImage();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = viewImage
        
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
}


