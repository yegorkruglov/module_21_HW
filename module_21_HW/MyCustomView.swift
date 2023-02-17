//
//  MyCustomView.swift
//  module_21_HW
//
//  Created by Egor Kruglov on 14.02.2023.
//

import UIKit

@IBDesignable class MyCustomView: UIView {
    
    
    @IBOutlet weak var labelForView: UILabel!
    
    @IBOutlet var colorView: UIView!
    
    @IBInspectable var circleColor: UIColor {
        get {
            return colorView.backgroundColor!
        }
        set(circleColor) {
            colorView.backgroundColor = circleColor
        }
    }
    
    @IBInspectable var labelText: String {
        get {
            return labelForView.text!
        }
        set(labelText) {
            labelForView.text = labelText
        }
    }
    
    var workingView: UIView!
    
    var xibName: String = "MyCustomView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCustomView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCustomView()
    }
    
    func getFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let xib = UINib(nibName: xibName, bundle: bundle)
        let view = xib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
    
    func setCustomView() {
        workingView = getFromXib()
        workingView.frame = bounds
        workingView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        workingView.layer.cornerRadius = frame.size.width / 2
        self.layer.cornerRadius = frame.size.width / 2
        addSubview(workingView)
    }
    
}

