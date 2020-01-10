//
//  ContentView.swift
//  FFXIVTimer
//
//  Created by Jetec-RD on 2020/1/9.
//  Copyright © 2020 JETEC ELETRONICS. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: Model
    @State var isAlert = false
    var body: some View {
        List(model.dungeons) { (dungeon) in
            VStack {
                Section {
                    Text(dungeon.key)
                }.onTapGesture {
                    print()
                }
                /*
                Text(dungeon.key).alert(isPresented: self.$isAlert) { () -> Alert in
                }
                 */
            }.padding(.leading, 20)
        }
    }
    
    func tapSection() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


