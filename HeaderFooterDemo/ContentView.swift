//
//  ContentView.swift
//  HeaderFooterDemo
//
//  Created by Ramill Ibragimov on 23.10.2020.
//

import SwiftUI

struct ContentView: View {
    var europe = ["Finland", "Sweden", "Norway", "Denmark", "Estonia", "Latvia", "Lithuanina", "France", "Germany", "Italy", "Spaint", "Portugal"]
    var asia = ["Pakistan", "India", "China", "Japan", "Russia", "Korea", "Afghanistan", "Iran", "Iraq", "Kazakhstan", "Kyrgyzstan", "Mongolia", "Nepal", "Tajikistan", "Turkmenistan", "Uzbekistan"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                        Text("Europe")
                            .foregroundColor(.primary)
                ) {
                    ForEach(0 ..< europe.count) {
                        Text(self.europe[$0])
                    }
                }
                
                Section(header:
                            HStack {
                                Image(systemName: "airplane")
                                Text("Asia")
                                    .foregroundColor(.primary)
                            }, footer:
                                Text("Some footer text")
                                .font(.footnote)
                ) {
                    ForEach(0 ..< asia.count) {
                        Text(self.asia[$0])
                    }
                }
            }.navigationBarTitle("Countries")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
