//
//  ColorView.swift
//  TheFinalProject
//
//  Created by Michael Castillo on 5/24/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import UIKit

protocol ColorDelegate{
    func pickedColor(color:UIColor)
}


class ColorPicker: UIView {
    var currentSelectionX: CGFloat = 0
    var selectedColor: UIColor!
    var delegate: ColorDelegate!
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        UIColor.black.set()
        var tempYPlace = self.currentSelectionX
        if (tempYPlace < CGFloat (0.0)) {
            tempYPlace = CGFloat (0.0);
        } else if (tempYPlace >= self.frame.size.width) {
            tempYPlace = self.frame.size.width - 1.0;
        }
        
        let temp = CGRect(x: 0.0, y: tempYPlace, width: 1.0, height: self.frame.size.height)
        UIRectFill(temp)
        
        //draw central bar over it
        let width = Int(self.frame.size.width)
        for i in 0 ..< width {
            UIColor(hue:CGFloat (i)/self.frame.size.width, saturation: 1.0, brightness: 1.0, alpha: 1.0).set()
            let temp = CGRect(x: CGFloat(i), y: 0, width: 1.0, height: self.frame.size.height)
            UIRectFill(temp)
        }
    }
    
    //Changes the selected color, updates the UI, and notifies the delegate.
    func selectedColor(color: UIColor){
        if (color != selectedColor)
        {
            var hue: CGFloat = 0
            var saturation: CGFloat = 0
            var brightness: CGFloat = 0
            var alpha: CGFloat = 0
            
            if color.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha){
                currentSelectionX = CGFloat (hue * self.frame.size.height);
                self.setNeedsDisplay();
                
            }
            selectedColor = color
            self.delegate.pickedColor(color: selectedColor)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch =  touches.first
        updateColor(touch: touch!)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch =  touches.first
        updateColor(touch: touch!)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch =  touches.first
        updateColor(touch: touch!)
    }
    
    func updateColor(touch: UITouch){
        currentSelectionX = (touch.location(in: self).x)
        selectedColor = UIColor(hue: (currentSelectionX / self.frame.size.width), saturation: 1.0, brightness: 1.0, alpha: 1.0)
        self.delegate.pickedColor(color: selectedColor)
        self.setNeedsDisplay()
    }
    
}
