//
//  KnowledgeView.swift
//  Coffee
//
//  Created by 林宏諭 on 2021/8/3.
//

import SwiftUI

struct KnowledgeView: View {
    @EnvironmentObject var isShow : Show
    
    var body: some View {
        
        VStack {
            ScrollView{
                ForEach(0..<1){ _ in
                    CardView_Knowledge()
                }
                .padding()
            }
        }
        .navigationTitle("咖啡知識")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading:HeaderButton(show: $isShow.menu, iconImage: "menu").padding(.bottom,10),trailing: HeaderButton(show: $isShow.cart, iconImage: "cart").padding(.bottom,10))
        
    }
}

struct KnowledgeView_Previews: PreviewProvider {
    static var previews: some View {
        KnowledgeView().environmentObject(Show())
    }
}