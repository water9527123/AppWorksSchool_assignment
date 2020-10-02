//
//  Note.swift
//  tableViewHw
//
//  Created by nono chan  on 2020/9/30.
//

import Foundation
import UIKit
class Note {
    var text : String?
    var noteID : String
    init() {
        self.noteID = UUID().uuidString
    }
}
