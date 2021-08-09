//
//  EventView.swift
//  Coffee
//
//  Created by 林宏諭 on 2021/8/2.
//

import SwiftUI

struct EventView: View {
    @EnvironmentObject var isShow : Show
    
    var body: some View {
        
        VStack {
            ScrollView{
                ForEach(0..<1){ _ in
                    CardView_Event()
                }
                .padding()
            }
        }
        .animation(.easeInOut)
        .navigationTitle("活動")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading:HeaderButton(show: $isShow.menu, iconImage: "menu").padding(.bottom,10),trailing: HeaderButton(show: $isShow.cart, iconImage: "cart").padding(.bottom,10))
        
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView().environmentObject(Show())
    }
}