//
//  SearchBar.swift
//  SearchBarTutorial
//
//  Created by Lorenzo Masucci on 10/12/2019.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import Foundation
import SwiftUI

struct SearchsBar: UIViewRepresentable {
    
    @Binding var text: String
    
    class Coordinator: NSObject, UISearchBarDelegate {
        
        @Binding var text: String
        
        init (text: Binding<String>) {
            _text = text
        }
        
         func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
    func makeCoordinator() -> SearchsBar.Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchsBar>) -> UISearchBar {
        let searchsBar = UISearchBar(frame: .zero)
        searchsBar.delegate = context.coordinator
        return searchsBar
    }
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchsBar>) {
        uiView.text = text
    }
}
