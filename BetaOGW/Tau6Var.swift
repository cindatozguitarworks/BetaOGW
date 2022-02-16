//
//  Tau6Var.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/3/22.
//
import Foundation
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
      
      var moduleNo: String
      var layout: String
      var pickupNum:  Int
      var wood: String
      var pickupName: String
   }
    
   struct Pickup: Identifiable {
      var id = UUID()
      var name: String
      
      var pickupType: String
      var mountType: String
      var pickupLocation: String
      var pickupOrientation: String
      var bassClearance: String
      var trebleClearance: String
      
      var manufact: String
      var cover: String
      var grndWire: String
    //  var dimensions: String = " Goto Dimensions > "
      var upperPolarity: String
      
      var northInductance: String
      var northResistance: String
      var northCapictance: String
      var northStartWireCol: String
      var northEndWireCol: String
      
      var southInductance: String
      var southResistance: String
      var southCapictance: String
      var southStartWireCol: String
      var southEndWireCol: String
      
   }
   
   

@Published var moduleNum = 0
@Published var pickNum = 0
   
@Published var modules = [
   Module(image: Image("OGWmodule"), name: "Module A", moduleNo: "1",layout: "HSS",pickupNum: 3, wood: "Spruce", pickupName: "Lace Alumitone" ),

     Module(image:Image ("Full_Strat_Empty"), name: "Module B", moduleNo: "2",layout: "STS", pickupNum: 3,wood: "Spruce", pickupName: "Full Strat"),

      Module(image: Image("OGWmodule"), name: "Module C", moduleNo: "3",layout: "HSS", pickupNum: 3,wood: "Spruce",pickupName: "Lace Alumitone"),

   Module(image:Image ("Full_Strat_Empty"), name: "Module D", moduleNo: "4",layout: "STS",pickupNum: 3,wood: "Spruce", pickupName: "Full Strat"),
      ]

   @Published var pickup = [
      Pickup( name: "Lace Alumitone", pickupType: "Hum",mountType: "hard",pickupLocation: "5mm", pickupOrientation: "0deg",bassClearance: "1.5mm",trebleClearance: "1mm",manufact: "Lace",cover: "None", grndWire: "Yes",upperPolarity: "North",
              northInductance:"1500 mH",northResistance: "5.4k Ohms",northCapictance: "25pF",northStartWireCol: "Black", northEndWireCol: "Blue",
              southInductance: "1500 mH",southResistance: "5.4k Ohms",southCapictance: "25pF",southStartWireCol:  "Black", southEndWireCol: "Blue"),
      
      Pickup( name: "Full Strat", pickupType: "Strat",mountType: "med",pickupLocation: "5mm", pickupOrientation: "0deg",bassClearance: "1.5mm",trebleClearance: "2mm",manufact: "Strat",cover: "Yes", grndWire: "No",upperPolarity: "South",
              northInductance:"1500 mH",northResistance: "4.5k Ohms",northCapictance: "50pF",northStartWireCol: "Black", northEndWireCol: "Blue",
              southInductance: "15001 mH",southResistance: "4.5k Ohms",southCapictance: "50pF",southStartWireCol:  "Red", southEndWireCol: "Yellow"),
      
      Pickup( name: "Lace Alumitone2", pickupType: "Hum",mountType: "soft",pickupLocation: "5mm", pickupOrientation: "0deg",bassClearance: "1.5mm",trebleClearance: "3mm",manufact: "Lace",cover: "None", grndWire: "Yes",upperPolarity: "North",
              northInductance:"1500 mH",northResistance: "5.4k Ohms",northCapictance: "25pF",northStartWireCol: "Black", northEndWireCol: "Blue",
              southInductance: "1500 mH",southResistance: "5.4k Ohms",southCapictance: "25pF",southStartWireCol:  "Black", southEndWireCol: "Blue"),
      
          
      Pickup( name: "Full Strat 2", pickupType: "Strat",mountType: "hard",pickupLocation: "5mm", pickupOrientation: "0deg",bassClearance: "1.5mm",trebleClearance: "4mm",manufact: "Strat",cover: "Yes", grndWire: "No", upperPolarity: "South",
              northInductance:"15002mH",northResistance: "4.5k Ohms",northCapictance: "50pF",northStartWireCol: "Black", northEndWireCol: "Blue",
              southInductance: "1500 mH",southResistance: "4.5k Ohms",southCapictance: "50pF",southStartWireCol:  "Red", southEndWireCol: "Yellow")
      

   ]
   }

