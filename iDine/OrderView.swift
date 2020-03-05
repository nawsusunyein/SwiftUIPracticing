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
        NavigationView{
            List{
                Section{
                    ForEach(order.items){item in
                        HStack{
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                        
                    }.onDelete(perform: deleteItems(at:))
                }
                
                Section{
                    NavigationLink(destination: CheckoutView()){
                        Text("Place Order")
                    }
                }.disabled(order.items.isEmpty)
                
            }
        }
        
    .navigationBarTitle("Order")
    .listStyle(GroupedListStyle())
    .navigationBarItems(trailing: EditButton())
    }
    
    func deleteItems(at offsets : IndexSet){
        order.items.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    
    static let order = Order()
    static var previews: some View {
        OrderView().environmentObject(order)
    }
}
