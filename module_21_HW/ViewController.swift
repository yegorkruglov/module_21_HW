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
    
    func panNMod(initialCircle: MyCustomView, initialGesture: UIPanGestureRecognizer) {
        
        //panning
        let gestureTranslation = initialGesture.translation(in: view)
        guard let gestureView = initialGesture.view else { return }
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        initialGesture.setTranslation(.zero, in: view)
        guard initialGesture.state == .ended else { return }
        print("Circle \(initialCircle.labelText) was panned")
        
        //disappearing and modifing
        var targetCircle = MyCustomView()
        var setForFunc = workingSet
        setForFunc.remove(initialCircle)
        for circle in setForFunc {
            if initialCircle.frame.intersects(circle.frame) {
                initialCircle.removeFromSuperview()
                targetCircle = circle
                targetCircle.frame.size.height += 20
                targetCircle.frame.size.width += 20
                targetCircle.circleColor = .blue
                targetCircle.workingView.layer.cornerRadius = targetCircle.workingView.frame.height / 2
                workingSet.remove(initialCircle)
                print("Circle \(initialCircle.labelText) was hidden. Circle \(circle.labelText) was modified.")
            }
        }
    }
    
    @IBAction func panCircle1(_ gesture: UIPanGestureRecognizer) {
        panNMod(initialCircle: circle1, initialGesture: gesture)
    }
    
    @IBAction func panCircle2(_ gesture: UIPanGestureRecognizer) {
        panNMod(initialCircle: circle2, initialGesture: gesture)
    }
    
    @IBAction func panCircle3(_ gesture: UIPanGestureRecognizer) {
        panNMod(initialCircle: circle3, initialGesture: gesture)
    }
    
    @IBAction func panCircle4(_ gesture: UIPanGestureRecognizer) {
        panNMod(initialCircle: circle4, initialGesture: gesture)
    }
    
    @IBAction func panCircle5(_ gesture: UIPanGestureRecognizer) {
        panNMod(initialCircle: circle5, initialGesture: gesture)
    }
    
    @IBAction func panCircle6(_ gesture: UIPanGestureRecognizer) {
        panNMod(initialCircle: circle6, initialGesture: gesture)
    }
    
    @IBAction func panCircle7(_ gesture: UIPanGestureRecognizer) {
        panNMod(initialCircle: circle7, initialGesture: gesture)
    }
    
    @IBAction func panCircle8(_ gesture: UIPanGestureRecognizer) {
        panNMod(initialCircle: circle8, initialGesture: gesture)
    }
}
