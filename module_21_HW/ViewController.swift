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
    
    var workingSet = Set<MyCustomView> ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workingSet.insert(circle1)
        workingSet.insert(circle2)
        workingSet.insert(circle3)
        workingSet.insert(circle4)
        workingSet.insert(circle5)
        workingSet.insert(circle6)
        workingSet.insert(circle7)
        workingSet.insert(circle8)
        
        for circle in workingSet {
            circle.backgroundColor = UIColor(white: 1.0, alpha: 0.0)
        }
    }
    
    @IBAction func panCircle1(_ gesture: UIPanGestureRecognizer) {
        //panning
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 1 was panned")
        
        //disappearing and modifing
        var targetCircle = MyCustomView()
        
        var setForFunc = workingSet
        setForFunc.remove(circle1)

        for circle in setForFunc {
            if circle1.frame.intersects(circle.frame) {
                circle1.removeFromSuperview()
                targetCircle = circle
                targetCircle.frame.size.height += 10
                targetCircle.frame.size.width += 10
                targetCircle.circleColor = .blue
                targetCircle.workingView.layer.cornerRadius = targetCircle.workingView.frame.height / 2
                workingSet.remove(circle1)
                print("Circle 1 was hidden. Circle \(circle.labelText) was modified")
            }
        }
    }
    
    @IBAction func panCircle2(_ gesture: UIPanGestureRecognizer) {
        //panning
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 2 was panned")
        
        //disappearing and modifing
        var targetCircle = MyCustomView()
        
        var setForFunc = workingSet
        setForFunc.remove(circle2)

        for circle in setForFunc {
            if circle2.frame.intersects(circle.frame) {
                circle2.removeFromSuperview()
                targetCircle = circle
                targetCircle.frame.size.height += 10
                targetCircle.frame.size.width += 10
                targetCircle.circleColor = .blue
                targetCircle.workingView.layer.cornerRadius = targetCircle.workingView.frame.height / 2
                workingSet.remove(circle2)
                print("Circle 2 was hidden. Circle \(circle.labelText) was modified")
            }
        }
    }
    
    @IBAction func panCircle3(_ gesture: UIPanGestureRecognizer) {
        //panning
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 3 was panned")
        
        //disappearing and modifing
        var targetCircle = MyCustomView()
        
        var setForFunc = workingSet
        setForFunc.remove(circle3)

        for circle in setForFunc {
            if circle3.frame.intersects(circle.frame) {
                circle3.removeFromSuperview()
                targetCircle = circle
                targetCircle.frame.size.height += 10
                targetCircle.frame.size.width += 10
                targetCircle.circleColor = .blue
                targetCircle.workingView.layer.cornerRadius = targetCircle.workingView.frame.height / 2
                workingSet.remove(circle3)
                print("Circle 3 was hidden. Circle \(circle.labelText) was modified")
            }
        }
    }
    
    @IBAction func panCircle4(_ gesture: UIPanGestureRecognizer) {
        //panning
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 4 was panned")
        
        //disappearing and modifing
        var targetCircle = MyCustomView()
        
        var setForFunc = workingSet
        setForFunc.remove(circle4)

        for circle in setForFunc {
            if circle4.frame.intersects(circle.frame) {
                circle4.removeFromSuperview()
                targetCircle = circle
                targetCircle.frame.size.height += 10
                targetCircle.frame.size.width += 10
                targetCircle.circleColor = .blue
                targetCircle.workingView.layer.cornerRadius = targetCircle.workingView.frame.height / 2
                workingSet.remove(circle4)
                print("Circle 4 was hidden. Circle \(circle.labelText) was modified")
            }
        }
    }
    
    @IBAction func panCircle5(_ gesture: UIPanGestureRecognizer) {
        //panning
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 5 was panned")
        
        //disappearing and modifing
        var targetCircle = MyCustomView()
        
        var setForFunc = workingSet
        setForFunc.remove(circle5)

        for circle in setForFunc {
            if circle5.frame.intersects(circle.frame) {
                circle5.removeFromSuperview()
                targetCircle = circle
                targetCircle.frame.size.height += 10
                targetCircle.frame.size.width += 10
                targetCircle.circleColor = .blue
                targetCircle.workingView.layer.cornerRadius = targetCircle.workingView.frame.height / 2
                workingSet.remove(circle5)
                print("Circle 5 was hidden. Circle \(circle.labelText) was modified")
            }
        }
    }
    
    @IBAction func panCircle6(_ gesture: UIPanGestureRecognizer) {
        //panning
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 6 was panned")
        
        //disappearing and modifing
        var targetCircle = MyCustomView()
        
        var setForFunc = workingSet
        setForFunc.remove(circle6)

        for circle in setForFunc {
            if circle6.frame.intersects(circle.frame) {
                circle6.removeFromSuperview()
                targetCircle = circle
                targetCircle.frame.size.height += 10
                targetCircle.frame.size.width += 10
                targetCircle.circleColor = .blue
                targetCircle.workingView.layer.cornerRadius = targetCircle.workingView.frame.height / 2
                workingSet.remove(circle6)
                print("Circle 6 was hidden. Circle \(circle.labelText) was modified")
            }
        }
    }
    
    @IBAction func panCircle7(_ gesture: UIPanGestureRecognizer) {
        //panning
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 7 was panned")
        
        //disappearing and modifing
        var targetCircle = MyCustomView()
        
        var setForFunc = workingSet
        setForFunc.remove(circle7)

        for circle in setForFunc {
            if circle7.frame.intersects(circle.frame) {
                circle7.removeFromSuperview()
                targetCircle = circle
                targetCircle.frame.size.height += 10
                targetCircle.frame.size.width += 10
                targetCircle.circleColor = .blue
                targetCircle.workingView.layer.cornerRadius = targetCircle.workingView.frame.height / 2
                workingSet.remove(circle7)
                print("Circle 7 was hidden. Circle \(circle.labelText) was modified")
            }
        }
    }
    
    @IBAction func panCircle8(_ gesture: UIPanGestureRecognizer) {
        //panning
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
        print("Circle 8 was panned")
        
        //disappearing and modifing
        var targetCircle = MyCustomView()
        
        var setForFunc = workingSet
        setForFunc.remove(circle8)

        for circle in setForFunc {
            if circle8.frame.intersects(circle.frame) {
                circle8.removeFromSuperview()
                targetCircle = circle
                targetCircle.frame.size.height += 10
                targetCircle.frame.size.width += 10
                targetCircle.circleColor = .blue
                targetCircle.workingView.layer.cornerRadius = targetCircle.workingView.frame.height / 2
                workingSet.remove(circle8)
                print("Circle 8 was hidden. Circle \(circle.labelText) was modified")
            }
        }
    }
}
