//
//  TimerViewController.swift
//  WatchHowIphone
//
//  Created by Леонид Шелудько on 26.12.2022.
//

import UIKit

class TimerViewController: UIViewController {
    
    @IBOutlet weak var timerPicker: UIPickerView!
    var timer = Timer()
    var timeh = ""
    var timemin = ""
    var timesec = ""
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timerPicker.dataSource = self
        timerPicker.delegate = self
        
        timeLabel.text = ""
    }
    
    @IBAction func startAction(_ sender: Any) {
        timerPicker.isHidden = true
        print(timeh.count)
        
        if timeh.count == 1 {
            let timeh1 = "0\(timeh):"
            timeLabel.text! += timeh1
        } else if timeh.count == 2 {
            timeLabel.text! += timeh
        }
        
        if timemin.count == 1 {
            let timemin1 = "0\(timemin):"
            timeLabel.text! += timemin1
        } else if timemin.count == 2 {
            timeLabel.text! += timemin
        } else if (timeLabel.text?.count)! > 0 {
            timeLabel.text! += "00:"
        }
        
        if timesec.count == 1 {
            let timesec1 = "0\(timesec)"
            timeLabel.text! += timesec1
        } else if timesec.count == 2 {
            timeLabel.text! += timesec
        } else {
            timeLabel.text! += "00"
        }
    }
    
}



extension TimerViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return 24
        case 1:
            return 60
        case 2:
            return 60
        default:
            break
        }
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        switch component {
        case 0:
            return NSAttributedString(string: "\(row)", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        case 1:
            return NSAttributedString(string: "\(row)", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        case 2:
            return NSAttributedString(string: "\(row)", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        default: break
        }
        return NSAttributedString(string: "\(row)", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            timeh += "\(row)"
        case 1:
            timemin += "\(row)"
        case 2:
            timesec += "\(row)"
        default:
            break
        }
    }
}
