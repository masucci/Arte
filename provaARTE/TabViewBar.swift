//
//  ContentView2.swift
//  provaARTE
//
//  Created by Lorenzo Masucci on 06/12/2019.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import SwiftUI


struct TabViewBar: View {
    @State var selectedView = 0
    var body: some View {
        TabView (selection: $selectedView)  {
            
            Text("First View")
                .tabItem{
                    Image(systemName: "1.circle")
                    Text("First")
            }.tag(0)
            Text("Second View")
                .tabItem{
                    Image(systemName: "2.circle")
                    Text("Second")
            }.tag(1)
            Text("Third view")
                .tabItem{
                    Image(systemName: "3.circle")
                    Text("Third")
            }.tag(2)
        }
    }
}

struct TabViewBar_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBar()
    }
}
