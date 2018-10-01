//
//  MainPageViewController.swift
//  UTutorialPageViewController
//
//  Created by Victor Hugo Benitez Bosques on 30/09/18.
//  Copyright © 2018 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class MainPageViewController: UIPageViewController,UIPageViewControllerDelegate {

    var arrPageTutorial : [TutorialContent] = [TutorialContent]()
    var bNext : Bool = false
    var bPrev : Bool = false
    
    private lazy var CustompageControl: UIPageControl = {
        let pc = UIPageControl(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 100))
        pc.currentPage = 0  // Empieza en 0
//        pc.numberOfPages = arrPageTutorial.count
        
        pc.numberOfPages = arrPageTutorial.count
        pc.backgroundColor = UIColor.yellow
        pc.currentPageIndicatorTintColor = .red
        pc.pageIndicatorTintColor = UIColor(red: 249/255, green: 207/255, blue: 224/255, alpha: 1)
        
        return pc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createStepsTutorial()
        
        dataSource = self
        delegate = self
        view.addSubview(CustompageControl)
        
        
        
        // configure the first view to show
        if let initVCToShow = selectVC(atIndex: 0){
            setViewControllers([initVCToShow], direction: .forward, animated: true, completion: nil)
        }
    }

    private func createStepsTutorial(){
        self.arrPageTutorial.append(TutorialContent(index: 0, description: "Primera descripcion", title: "Primer Titula", imgTutorial: #imageLiteral(resourceName: "tuto-intro-1")))
         self.arrPageTutorial.append(TutorialContent(index: 1, description: "Segundo descripcion", title: "Segundo Titula", imgTutorial: #imageLiteral(resourceName: "tuto-intro-2")))
        self.arrPageTutorial.append(TutorialContent(index: 2, description: "Tercero descripcion", title: "Tercero Titula", imgTutorial: #imageLiteral(resourceName: "tuto-intro-3")))
 
    }
  
}

extension MainPageViewController : UIPageViewControllerDataSource{
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! TutorialViewController).objectTutoralContent.index
        index += 1
        
        return selectVC(atIndex: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! TutorialViewController).objectTutoralContent.index
        index -= 1
//        pageControl.currentPage = index
        return selectVC(atIndex: index)
        
    }
    
    func selectVC(atIndex : Int) -> TutorialViewController?{
        
        if atIndex == NSNotFound || atIndex < 0 || atIndex >= self.arrPageTutorial.count{
//            pageControl.currentPage = 0
            return nil
        }
        
        
        if let stepTutorialViewController = storyboard?.instantiateViewController(withIdentifier: "TutorialVC") as? TutorialViewController{
            stepTutorialViewController.objectTutoralContent = self.arrPageTutorial[atIndex]
//            CustompageControl.currentPage = atIndex
            
//
//            if let indexToShow = stepTutorialViewController.objectTutoralContent{
//                CustompageControl.currentPage = ((indexToShow.index - 1) < 0) ? 0 : (indexToShow.index - 1)
//
//            }
            
            return stepTutorialViewController
            
        }
        return nil
    }
    
    
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//        return self.arrPageTutorial.count
//    }
//
////    // MARK: - What dot to show with the correct ViewController step tutorial
//    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
//        if let stepTutorialViewController = storyboard?.instantiateViewController(withIdentifier: "TutorialVC") as? TutorialViewController{
//            if let indexToShow = stepTutorialViewController.objectTutoralContent{
//                CustompageControl.currentPage = indexToShow.index
//                return indexToShow.index
//            }
//
//        }
//
//        return 0
//
//    }
//
    

    
}
