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
   
   //   struct log 
      
      
     
      //MARK: - Phone Detail - Section 1
      
      @Published var androidOSVer: String = ""
      @Published var osAPILev : String = ""
      @Published var linuxKernelVer : String = ""
      @Published var deviceName: String = UIDevice.current.name
      @Published var systemName: String =  UIDevice.current.systemName
      @Published var version: String =  UIDevice.current.systemVersion
      @Published var brand: String = "google"
   //   @Published var manufacture : String = "Google"
      @Published var bluetoothName: String = "Pixel"
      @Published var model: String =  UIDevice.current.modelName //"Pixel"
      @Published var product: String = "sailfish"
      @Published var board: String = "sailfish"
      
      //MARK: - Phone Detail - Section 2
      @Published var bluetoothLE : Bool =  false
      @Published var lollipopScanAPI : Bool =  true
      @Published var scanBatch : Bool =  false
      @Published var multipleAds : Bool =  true
      
      //MARK: - Password User Setup
      @Published var passwordOn : Bool =  true
      @Published var password: String = ""
      @Published var passwordDays: String = "7"
      @Published var resetCountOn : Bool =  true
      
      //MARK: - Power Use Setup - Section 1
      @Published var positiveCurrentVoltage: String = "8.2V"
      @Published var positivePercentAvailable: String = " 60%"
      //MARK: - Power Use Setup - Section 2
      @Published var negativeCurrentVoltage: String = "-8.0V"
      @Published var negativePercentAvailable: String = " 50%"
      //MARK: - Power Use Setup - Section 3
      @Published var appNotificationOn : Bool =  true
      @Published var textAlerts: String = " none "
      @Published var loPowerAlerts: String = " none "
      @Published var loPowerWarning: String = " none "
      //MARK: - Power Use Setup - Section 4
      @Published var sleepNoMotion: String = " none "
      @Published var sleepNoPlay: String = " none "
      @Published var blankGearShift: String = " none "
      @Published var blankVolChange:  Bool = false
      
      override init() {
  
         let attributes: [NSAttributedString.Key: Any] =  [ .foregroundColor : UIColor.white ]
         
         UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.systemGreen
         
         UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected )
      }
   
   struct Module: Identifiable {
      var id = UUID()
      var image: Image
      var name: String
//      var pickup: String
//      var type: String
//      var layout: String
//      var wood: String
   }
   
   @Published var modules = [
         Module(image: Image("OGWmodule"), name: "Module A"),
         Module(image:Image ("Full_Strat_Empty"), name: "Module B"),
         Module(image: Image("OGWmodule"), name: "Module C"),
         Module(image:Image ("Full_Strat_Empty"), name: "Module D"),
      ]
  
   
  
   

  
   
   
   
   
   }

