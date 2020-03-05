//
//  OrderView.swift
//  iDine
//
//  Created by techfun on 2020/03/04.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order : Order
    var body: some View {
        List{
            Section{
                ForEach(order.items){item in
                    HStack{
                        Text(item.name)
                        Spacer()
                        Text("$\(item.price)")
                    }
                    
                }
            }
            
            Section{
                NavigationLink(destination: Text("Check Out")){
                    Text("Place Order")
                }
            }
            
        }
    .navigationBarTitle("Order")
    .listStyle(GroupedListStyle())
    }
}

struct OrderView_Previews: PreviewProvider {
    
    static let order = Order()
    static var previews: some View {
        OrderView().environmentObject(order)
    }
}
