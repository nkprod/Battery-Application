//
//  ViewController.swift
//  Battery Application
//
//  Created by Nulrybek Karshyga on 7/10/20.
//  Copyright © 2020 Nulrybek Karshyga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let leftLabelView: UILabel = {
              let myLabel = UILabel(frame: CGRect(x: 30, y: 700, width: 20, height: 20))
              myLabel.font = UIFont(name: "Avenir-Light", size: 46)
              myLabel.text = "-"
              return myLabel
          }()
    private let rightLabelView: UILabel = {
              let myLabel = UILabel(frame: CGRect(x: 380, y: 700, width: 20, height: 20))
              myLabel.font = UIFont(name: "Avenir-Light", size: 36)
              myLabel.text = "+"
              return myLabel
          }()
    private let topLabelView: UILabel = {
        let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 414, height: 200))
        myLabel.font = UIFont(name: "Avenir-Light", size: 36)
        myLabel.text = "My Battery"
        myLabel.backgroundColor = .lightGray
        myLabel.textAlignment = .center
        return myLabel
    }()
    private let batteryView: UIImageView = {
        let myImage = UIImageView(frame: CGRect(x: 150, y: 300, width: 250, height: 250))
        myImage.contentMode = UIView.ContentMode.scaleAspectFit
        myImage.image = #imageLiteral(resourceName: "0")
        return myImage
    }()
    
    private let graphView: UIImageView = {
        let myImage = UIImageView(frame: CGRect(x: 50, y: 350, width: 100, height: 150))
        myImage.contentMode = UIView.ContentMode.scaleAspectFit
        myImage.image = #imageLiteral(resourceName: "graph3")
        return myImage
    }()
    private let batterySlider: UISlider = {
        let mySlider = UISlider(frame:CGRect(x: 60, y: 700, width: 300, height: 20))
        mySlider.minimumValue = 0
        mySlider.maximumValue = 90
        mySlider.isContinuous = true
        mySlider.tintColor = UIColor.green
        mySlider.addTarget(self, action: #selector(ViewController.sliderValueDidChange(_:)), for: .valueChanged)
        return mySlider
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // views
        view.addSubview(topLabelView)
        view.addSubview(leftLabelView)
        view.addSubview(rightLabelView)
        view.addSubview(batteryView)
        view.addSubview(graphView)
        view.addSubview(batterySlider)
        
        
        
//        // configure battery level fetching
//        UIDevice.current.isBatteryMonitoringEnabled.self = true
//
//
//        // observer for battery level
//        NotificationCenter.default.addObserver(self, selector: #selector(batteryLevelDidChange), name: UIDevice.batteryLevelDidChangeNotification, object: nil)
//
    }
    
//    var batteryLevel: Float {
//        return UIDevice.current.batteryLevel
//    }
//
//    @objc func batteryLevelDidChange() {
//        print(self.batteryLevel)
//    }
    
    
    
    @objc func sliderValueDidChange(_ sender: UISlider){
        let imgNameForBattery = "\(Int(sender.value/10)).png"
        let imgNameForGraph = "graph\(Int(((sender.value)/40)+1)*3).png"
        batteryView.image = UIImage(named: imgNameForBattery)
        graphView.image = UIImage(named: imgNameForGraph)
    }
    

}

