//
//  ViewController.swift
//  hw3
//
//  Created by nono chan  on 2020/10/2.
//

import UIKit

class ViewController:UIViewController{

    @IBOutlet weak var StationID: UILabel!
    
    @IBOutlet weak var StationName: UILabel!
    
    @IBOutlet weak var Address: UILabel!
    struct JSONTest : Decodable {
        let stationID : String
        let stationName : String
        let stationAddress : String
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

           let urlString = "https://stations-98a59.firebaseio.com/practice.json"
           guard let url = URL(string: urlString) else { return }
           
           URLSession.shared.dataTask(with: url) { (data, response, error) in
               if error != nil {
                   print(error!.localizedDescription)
               }

            guard let data = data else { return }
            do {
                
                let JSONData = try JSONDecoder().decode(JSONTest.self, from: data)
                
                DispatchQueue.main.async {
                    self.StationID.text = JSONData.stationID
                    self.StationName.text = JSONData.stationName
                    self.Address.text = JSONData.stationAddress
                }

            } catch let jsonError {
                print(jsonError)
            }
           }.resume()
    }
    
        

}

