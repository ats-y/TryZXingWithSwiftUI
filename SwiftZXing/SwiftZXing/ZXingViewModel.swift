//
//  ZXingViewModel.swift
//  SwiftZXing
//
//  Created by 吉野敦 on 2021/01/31.
//

import Foundation
import ZXingObjC

class ZXingViewModel: NSObject, ZXCaptureDelegate{

    var _capture = ZXCapture()
    
    func setup(){
        
        _capture.camera = _capture.back()
        _capture.focusMode =  .continuousAutoFocus
        _capture.delegate = self
    }
    
    func captureResult(_ capture: ZXCapture!, result: ZXResult!) {
        
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)

        capture?.stop()
    }
    
    func captureCameraIsReady(_ capture: ZXCapture!) {
        print(#function)
    }
    
    func startCapture(){
        
        _capture.start()
    }
}
