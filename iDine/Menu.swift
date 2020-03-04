//
//  Menu.swift
//  iDine
//
//  Created by techfun on 2020/03/04.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct MenuSection : Codable{
    var id : UUID
    var name : String
    var items : [MenuItem]
}

struct MenuItem : Codable,Equatable{
    var id : UUID
    var name : String
    var photoCredit : String
    var price : Int
    var restrictions : [String]
    var description : String
}
