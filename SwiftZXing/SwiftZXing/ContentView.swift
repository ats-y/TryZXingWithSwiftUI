//
//  ContentView.swift
//  SwiftZXing
//
//  Created by 吉野敦 on 2021/01/30.
//

import SwiftUI
import ZXingObjC

struct ContentView: View {
    
    var zxingVm = ZXingViewModel()
    var zxCapture = ZXCapture()
    
    var body: some View {
        VStack{
            Text("Hello, world!")
                .padding()
            
            Button(action: {
                zxingVm.startCapture()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            
            CALayerView(caLayer: zxingVm._capture.layer)
        }
        
        .onAppear(){

            zxingVm.setup()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}
