//
//  ViewController.swift
//  tableViewHw
//
//  Created by nono chan  on 2020/9/28.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    var data : [Note] = []
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        for index in 0...10 {
            let note = Note()
            note.text = "This is section 0, row \(index)"
            data.append(note )
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        let note = self.data[indexPath.row]
        cell.textLabel?.text = note.text
        
        return cell
        
         
    }


}

