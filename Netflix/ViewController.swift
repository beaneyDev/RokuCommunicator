//
//  ViewController.swift
//  Netflix
//
//  Created by Matt Beaney on 26/12/2016.
//  Copyright © 2016 Matt Beaney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func load(_ sender: Any) {
        let session = URLSession(configuration: .default)
        let url: URL = URL(string: "http://192.168.1.100:8060/launch/12?contentID=70155589&MediaType=series")!
        var urlRequest: URLRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        
        let datatask = session.dataTask(with: urlRequest, completionHandler: { data, response, error in
            
        })
        
        datatask.resume()
    }

}

