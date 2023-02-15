//
//  ViewController.swift
//  module_21_HW
//
//  Created by Egor Kruglov on 14.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circle1: MyCustomView!
    
    @IBOutlet weak var circle2: MyCustomView!
    
    @IBOutlet weak var circle3: MyCustomView!
    
    @IBOutlet weak var circle4: MyCustomView!
    
    @IBOutlet weak var circle5: MyCustomView!
    
    @IBOutlet weak var circle6: MyCustomView!
        
    @IBOutlet weak var circle7: MyCustomView!
    
    @IBOutlet weak var circle8: MyCustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let arrayOfCircles = [circle1, circle2, circle3, circle4, circle5, circle6, circle7, circle8]
        for circle in arrayOfCircles {
            circle!.backgroundColor = UIColor(white: 1.0, alpha: 0.0)
        }
    }
    
    @IBAction func panCircle1(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 1 was panned")
    }
    
    @IBAction func panCircle2(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 2 was panned")
    }
    
    @IBAction func panCircle3(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 3 was panned")
    }
    
    @IBAction func panCircle4(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 4 was panned")
    }
    
    @IBAction func panCircle5(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 5 was panned")
    }
    
    @IBAction func panCircle6(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 6 was panned")
    }
    
    @IBAction func panCircle7(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 7 was panned")
    }
    
    @IBAction func panCircle8(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 8 was panned")
    }
    
}
