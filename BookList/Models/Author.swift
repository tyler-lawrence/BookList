//
//  Author.swift
//  BookList
//
//  Created by 寒意⛓🥀💎▩xxııʌ.𝕽𝕬𝕽▽▽ on 11/24/23.
//

import Foundation
import SwiftData
@Model
class Author: Identifiable {
    let id = UUID()
    var name:String

    
    init(name: String) {
        self.name = name

    }
}

#if DEBUG
extension Book{
    static let testAuthor = Author(name: "Kentaro Miura")
}
#endif
