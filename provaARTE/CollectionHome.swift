////
////  CollectionHome.swift
////  provaARTE
////
////  Created by Lorenzo Masucci on 12/12/2019.
////  Copyright © 2019 Apple Inc. All rights reserved.
////
//
//import SwiftUI
//
//struct Box {
//    var id: Int
//    let title, imageUrl: String
//}
//
//struct CollectionHome: View {
//    let boxes: [Box] = [
//        Box(id: 0, title: "Good Stuff", imageUrl: "0"),
//        Box(id: 1, title: "Arte", imageUrl: "1"),
//        Box(id: 2, title: "Love", imageUrl: "2"),
//        Box(id: 3, title: "Good Stuff", imageUrl: "3"),
//        Box(id: 4, title: "Good Stuff", imageUrl: "4")
//    ]
//    var body: some View {
//        VStack{
//            ScrollView(.horizontal,showsIndicators: false){
//                HStack{
//                    ForEach(boxes, id: \.id) { box in
//                        BoxView(box: box)
//                    }
//                } .padding(20)
//
//            }
//    }
//}
//        struct BoxView: View {
//            let box: Box
//            var body: some View {
//                VStack{
//                    Image(box.imageUrl)
//                        .resizable()
//                        .frame(width:180,height: 180)
//                        .cornerRadius(12)
//                    Text(box.title)
//                        .font(.subheadline)
//                        .fontWeight(.bold)
//                    Spacer()
//                }
//            }
//        }
//struct CollectionHome_Previews: PreviewProvider {
//    static var previews: some View {
//        CollectionHome()
//    }
//}
//}
