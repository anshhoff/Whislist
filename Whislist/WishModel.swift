//
//  WishModel.swift
//  Whislist
//
//  Created by Ansh Hardaha on 27/05/25.
//

import Foundation
import SwiftData

@Model
class Wish {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
