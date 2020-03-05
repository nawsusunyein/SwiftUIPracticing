//
//  AppView.swift
//  iDine
//
//  Created by techfun on 2020/03/05.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("Menu")
            }
            OrderView()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Order")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    
    static let order = Order()
    
    static var previews: some View {
        AppView().environmentObject(order)
    }
}
