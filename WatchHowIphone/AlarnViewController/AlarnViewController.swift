//
//  AlarnViewController.swift
//  WatchHowIphone
//
//  Created by Леонид Шелудько on 26.12.2022.
//

import UIKit

class AlarnViewController: UIViewController {

    @IBOutlet weak var pravitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pravitButton.configuration?.titlePadding = 0
        
    }
    

}
