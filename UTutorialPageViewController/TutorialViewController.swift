//
//  TutorialViewController.swift
//  UTutorialPageViewController
//
//  Created by Victor Hugo Benitez Bosques on 30/09/18.
//  Copyright © 2018 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imgTutorial: UIImageView!
    
    var objectTutoralContent : TutorialContent!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.text = objectTutoralContent.strTitle
        lblDescription.text = objectTutoralContent.strDesciption
        imgTutorial.image = objectTutoralContent.imgTutorial
        
    }

    
    

}
