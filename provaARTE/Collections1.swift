//
//  Collections1.swift
//  provaARTE
//
//  Created by Lorenzo Masucci on 09/12/2019.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import SwiftUI

struct ColViewBox {
    var id: Int
    let title, imageUrl: String
}

struct Collections1: View {
    
    let boxesCollection: [ColViewBox] = [
        ColViewBox(id: 0, title: "Good Stuff", imageUrl: "0"),
        ColViewBox(id: 1, title: "Arte", imageUrl: "1"),
        ColViewBox(id: 2, title: "Love", imageUrl: "2"),
        ColViewBox(id: 3, title: "Good Stuff", imageUrl: "3"),
        ColViewBox(id: 4, title: "Good Stuff", imageUrl: "4")
    ]
    
    var body: some View {
       VStack{
        HStack {
            Text("Collections")
                    .font(.headline)
                    .multilineTextAlignment(.leading)
            Spacer()
        }
        .padding(5)
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(boxesCollection, id: \.id) { colView1 in
                        ColView1(colView1: colView1)
                    }
                } .padding(20)
            }

        }
    }
}

struct ColView1: View {
    let colView1: ColViewBox
    var body: some View {
        VStack{
            Image(colView1.imageUrl)
                .resizable()
                .frame(width:120,height: 90)
                .cornerRadius(10)
            Text(colView1.title)
                .font(.subheadline)
                .fontWeight(.bold)
                Spacer()
        }
    }
}

struct Collections1_Previews: PreviewProvider {
    static var previews: some View {
        Collections1()
    }
}
