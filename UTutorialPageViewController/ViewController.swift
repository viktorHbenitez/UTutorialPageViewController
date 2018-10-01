//
//  ViewController.swift
//  UTutorialPageViewController
//
//  Created by Victor Hugo Benitez Bosques on 30/09/18.
//  Copyright © 2018 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        if let tutorialViewController = storyboard?.instantiateViewController(withIdentifier: "MainPageVC") as? MainPageViewController{
            self.present(tutorialViewController, animated: false, completion: nil)
        }
    }


}

