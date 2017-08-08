//
//  ViewController.swift
//  MyPhotosApp
//
//  Created by Indre on 04/07/17.
//  Copyright © 2017 Indre. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBAction func browseImage(sender: AnyObject) {
        
        let img = NSOpenPanel();
        
        img.canChooseDirectories = true;
        img.allowsMultipleSelection = true;
        img.showsHiddenFiles = false;
        img.allowedFileTypes = ["jpg"];
        
        img.runModal();
        
        let result = img.url; // Pathname of the file
            
        if (result != nil) {
            let importImg = NSImage(contentsOf: result!)
            //imgViev2.image = importImg
            
            let myVC = storyboard?.instantiateController(withIdentifier: "SecondView") as! SecondView
            
            myVC.viewImage = importImg! // !
            //NSImage(byReferencing:NSURL(string: "aaa")! as URL)
            //myVC.viewImage = NSImage(named: "Images/pause_work_normal.png")
            //navigationC?.pushViewController(myVC, animated: true)

            
            self.presentViewControllerAsModalWindow(myVC)
        
        } else {
            // Cancel
            
            return
        }
        
    }
    
  /*  override func prepare(for segue: NSStoryboardSegue, sender: Any?) { //transition between two view controllers
    
        let destViewController : SecondView = segue.destinationController as! SecondView
        
        destViewController.viewImage = imgView.image

    } */
    
    override func viewDidLoad() {
        super.viewDidLoad();

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

