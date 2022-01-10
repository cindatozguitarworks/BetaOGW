//
//  PhoneDetailView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/15/21.
//

import SwiftUI

struct PhoneDetailView: View {
   
   @ObservedObject var tau6  = Tau6()
   
    var body: some View {

   Form{
   //MARK: - 1st Section - CLEAN UP
      Section(header: Text("Device Information")) {
         HStack{
            Text("Android OS Version")
            Spacer()
            Text("\(tau6.androidOSVer)")
         }
         HStack{
         Text("OS API Level")
         Spacer()
         Text("\(tau6.osAPILev)")
         }
         HStack{
         Text("Linux Kernel Version")
         Spacer()
         Text("\(tau6.linuxKernelVer)")
         }
         
         HStack{
            Text("Device Name")
            Spacer()
            Text("\(tau6.deviceName)")
         }
         HStack{
            Text("Model")
            Spacer()
            Text("\(tau6.model)")
         }
         
         HStack{
         Text("System Name")
         Spacer()
         Text("\(tau6.systemName)")
         }
         HStack{
         Text("Version")
         Spacer()
         Text("\(tau6.version)")
         }
         
        
         HStack{
         Text("Bluetooth Name")
         Spacer()
         Text("\(tau6.bluetoothName)")
         }
         HStack{
         Text("Product")
         Spacer()
         Text("\(tau6.product)")
         }
         HStack{
         Text("Board")
         Spacer()
         Text("\(tau6.board)")
         }
         
      }//Section1
          //MARK: - 2nd Section
          Section(header: Text("Supported Feature")) {
             HStack{
                Text("Bluetooth LE")
                Spacer()
                Image(systemName: tau6.bluetoothLE ? "checkmark.square" : "square" )
             }
          
             HStack{
                Text("Lollipop Scan API")
                Spacer()
                Image(systemName: tau6.lollipopScanAPI ? "checkmark.square" : "square" )
             }
             HStack{
                Text("Scan batching")
                Spacer()
                Image(systemName: tau6.scanBatch ? "checkmark.square" : "square" )
             }
             HStack{
                Text("Multiple Advertisment")
                Spacer()
                Image(systemName: tau6.multipleAds ? "checkmark.square" : "square" )
             }
       }//section2

     }//form
      
         .navigationBarTitle("BlueTooth Debug Info")
      
   
    }//body
}//view

struct PhoneDetailView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
          PhoneDetailView() }
    }
}
