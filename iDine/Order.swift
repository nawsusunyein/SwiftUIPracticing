//
//  Order.swift
//  iDine
//
//  Created by techfun on 2020/03/04.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

class Order{
    
    var items = [MenuItem]()
    
    var total : Int{
        if items.count > 0 {
        return items.reduce(0){$0 + $1.price}
    }else{
        return 0
    }
  }
    
    func add(item : MenuItem){
        items.append(item)
    }
    
    func remove(item : MenuItem){
        if let index = items.firstIndex(of: item){
            items.remove(at: index)
        }
    }
}
