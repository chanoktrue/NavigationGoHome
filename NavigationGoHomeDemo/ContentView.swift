//
//  ContentView.swift
//  NavigationGoHomeDemo
//
//  Created by Thongchai Subsaidee on 9/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isHome: Bool = false
    
    var body: some View {
        
        NavigationView {
           
            Text("111: \(isHome ? "true" : "false")")
            
                .toolbar{
                    NavigationLink(isActive: $isHome) {
                        NextView(isHome: $isHome)
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.red)
                    }

                }
            
                .navigationTitle("Home")
        }

            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct NextView: View {
    @Binding var isHome: Bool
    var body: some View {
        NavigationLink {
            FinalView(isHome: $isHome)
        } label: {
            Text("2222: \(isHome ? "true" : "false" )")
                .padding()
        }


    }
}


struct FinalView: View {
    @Binding var isHome: Bool
    var body: some View {
        Button {
            self.isHome = false
        } label: {
            Text("333: \(isHome ? "true" : "false")")
                .padding()
        }

    }
}
