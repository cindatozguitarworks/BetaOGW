//
//  Tau6Var.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/3/22.
//

import SwiftUI

class Tau6: NSObject, ObservableObject {
//MARK: -- Settings I --
//MARK: - General Guitar - Section 1
   
   @Published var ownerName: String = "Oz Anderson"
   @Published var ownerReg: String = "123456789"
   @Published var scaleLen: String = "1.234"
   @Published var partNum: String = "123456"
   @Published var serialNum: String = "12aBc3456D"
   @Published var tauSoftAppVer: String = "1.2"
   @Published var units = 0  // ["English","Metric"]

//MARK: - General Guitar - Section 2
      
   @Published var userDetailIndex = 0  //["Normal","HardCore"]
   
   //MARK: - Firmware Update - Section 1
   
   @Published var firmwareVersion: String = "NvrCrsh2"  // from Firmware update page
  
   //MARK: - Phone Detail - Section 1
   
   @Published var androidOSVer: String = "7.1.2"
   @Published var osAPILev : String = "25"
   @Published var linuxKernelVer : String = "3.18.31-gc22ff621f1a"
   @Published var deviceName: String = "Unknown Device"
   @Published var bluetoothName: String = "Pixel"
   @Published var brand: String = "google"
   @Published var manufacture : String = "Google"
   @Published var model: String = "Pixel"
   @Published var product: String = "sailfish"
   @Published var board: String = "sailfish"
   
   //MARK: - Phone Detail - Section 2
   @Published var bluetoothLE : Bool =  false
   @Published var lollipopScanAPI : Bool =  true
   @Published var scanBatch : Bool =  false
   @Published var multipleAds : Bool =  true
   
   //MARK: - Password User Setup
   @State var passwordOn : Bool =  true
   @Published var password: String = ""
}
