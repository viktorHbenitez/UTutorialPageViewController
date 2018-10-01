//
//  TutorialContent.swift
//  UTutorialPageViewController
//
//  Created by Victor Hugo Benitez Bosques on 30/09/18.
//  Copyright © 2018 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation
import UIKit

class TutorialContent: NSObject {
    
    
    var index : Int
    var strDesciption : String = ""
    var strTitle : String = ""
    var imgTutorial : UIImage!
    
    init(index : Int, description : String, title : String, imgTutorial : UIImage ) {
        self.index = index
        self.strDesciption = description
        self.strTitle = title
        self.imgTutorial = imgTutorial
    }
    
}
