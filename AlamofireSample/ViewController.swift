//
//  ViewController.swift
//  AlamofireSample
//
//  Created by Gaëtan HERFRAY on 01/05/2017.
//  Copyright © 2017 Gahfy. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet var contentLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://jsonplaceholder.typicode.com/posts/1").responseString { response in
            switch response.result {
            case .success:
                if let JSON = response.result.value {
                    self.contentLabel.text = JSON
                }
            case .failure(let error):
                self.contentLabel.text = error.localizedDescription
            }
            self.contentLabel.sizeToFit()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

