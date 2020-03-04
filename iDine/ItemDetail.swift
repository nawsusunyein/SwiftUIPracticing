//
//  ItemDetail.swift
//  iDine
//
//  Created by techfun on 2020/03/04.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    var item : MenuItem
    
    var body: some View {
        VStack{
            ZStack(alignment:.bottomTrailing){
                Image(item.mainImage)
                Text("Photo : \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .offset(x:-5,y:-5)
            }
            
            Text(item.description)
                .padding()
            Spacer()
        }
        .navigationBarTitle(Text(item.name),displayMode: .inline)
        
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetail(item: MenuItem.example)
        }
        
    }
}
