//
//  Menu.swift
//  iDine
//
//  Created by techfun on 2020/03/04.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct MenuSection : Codable,Identifiable{
    var id : UUID
    var name : String
    var items : [MenuItem]
}

struct MenuItem : Codable,Equatable,Identifiable{
    var id : UUID
    var name : String
    var photoCredit : String
    var price : Int
    var restrictions : [String]
    var description : String
    
    var mainImage : String{
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    
    var thumbnailImage : String{
        "\(mainImage)-thumb"
    }
    
    #if DEBUG
      static let example = MenuItem(id: UUID(), name: "Apple Juice", photoCredit: "Liang Shuo Ling", price: 8, restrictions: ["G","V"], description: "Cool and Sweet Juice")
    #endif
    
}


