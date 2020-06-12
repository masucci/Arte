//
//  ContentView.swift
//  provaARTE
//
//  Created by Lorenzo Masucci on 05/12/2019.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import SwiftUI

struct Box {
    var id: Int
    let title, imageUrl: String
}


struct ContentView: View {
    @State private var names = ["Lorenzo Masucci", "Giovanni Prisco", "Andrea Esposito La Rossa", "Dario Esposito", "Gianluca Dubioso"]
    
    @State private var search = ""
    
    
    let boxes: [Box] = [
        Box(id: 0, title: "Good Stuff", imageUrl: "0"),
        Box(id: 1, title: "Arte", imageUrl: "1"),
        Box(id: 2, title: "Love", imageUrl: "2"),
        Box(id: 3, title: "Good Stuff", imageUrl: "3"),
        Box(id: 4, title: "Good Stuff", imageUrl: "4")
    ]
    
    @State var selectedView = 0
    var body: some View {
        TabView (selection: $selectedView) {
            NavigationView {
//                    SearchsBar(text: $search)
                ScrollView{
                    VStack{
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                ForEach(boxes, id: \.id) { box in
                                    BoxView(box: box)
                                }
                            } .padding(20)

                        }
                        //                1 Collection
                        Collections1()
                        //                2 Category
                        VStack{
                            HStack {
                                Text("Politics and Society")
                                    .font(.title)
                                    .multilineTextAlignment(.leading)
                                    .padding(5)
                                    Spacer()
                                    
                                
                            }
                            Image("1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .edgesIgnoringSafeArea(.all)
                            
                            
                        }
                        .edgesIgnoringSafeArea(.all)
                    }
                    //               2 Collection
                    Collections1()
                    
                    
                }
                    
//                .padding(20)
                    
                .navigationBarTitle("Discover")
                
            }
            .tabItem{
                Image(systemName: "house")
                Text("Home")
            }.tag(0)
            Text("ARTE Concert")
                .tabItem{
                    Image(systemName: "music.note")
                    Text("ARTE Concert")
            }.tag(1)
            Text("View")
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
            }.tag(2)
        }
    }
}

struct BoxView: View {
    let box: Box
    var body: some View {
        VStack{
            Image(box.imageUrl)
                .resizable()
                .frame(width:180,height: 180)
                .cornerRadius(12)
            Text(box.title)
                .font(.subheadline)
                .fontWeight(.bold)
            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
