//
//  ContentView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/7/21.
//

import SwiftUI

struct ContentView: View {
   
   @ObservedObject var tau6  = Tau6()
   
  
   @State var unitChoice = ["English","Metric"]
   
   @State var passwordOn = true
 //  @State Observable Object var passwordChoice = ["Yes","No"]
   

   @State var userDetailLevel = ["Normal","HardCore"]
   
   
   
   
    var body: some View {
      NavigationView {
         Form{
            
//MARK: - 1st Section
            Section(header: Text("General Guitar")) {
               Text(" Owner \(tau6.ownerName)")
               Text(" Owner Registration #  \(tau6.ownerReg)")
               Text(" Scale Length =  \(tau6.scaleLen)")
               Text(" Part # =  \(tau6.partNum)")
               Text(" Serial # = \(tau6.serialNum)")
               Text(" Tau6 app Software Ver# =  \(tau6.tauSoftAppVer)")
               
             NavigationLink(destination: UpdateView(), label: { Text( " Tau6 Firmware Ver# =     \(tau6.firmwareVersion)")

               })
               
               NavigationLink(destination: PhoneDetailView(), label: { Text( " Misc Phone Details = ")
               }
               )

               Picker("English or Metric", selection: $tau6.units) {
                     ForEach(0 ..< unitChoice.count){
                       Text(self.unitChoice[$0])
                     }
            }.pickerStyle(SegmentedPickerStyle())
  
            }//section1
            
//MARK: - SECOND SECTION
            
               Section(header: Text("User General")) {
                  
                  Picker("User Detail Level", selection: $tau6.userDetailIndex) {
                      ForEach(0 ..< userDetailLevel.count){
                       Text(self.userDetailLevel[$0])
                    }
               }.pickerStyle(SegmentedPickerStyle())
           
           NavigationLink(destination: PasswordSetupView(), label: { Text( "Password Use    ")
                  } )

                    
                    
                  
         }//section 2
         }//form
         .navigationBarTitle("Settings I", displayMode: .automatic)
         
         .navigationBarItems(trailing: NavigationLink(destination: InfoView(), label: { Image(systemName: "info.circle")

         }))

              
        
        
       
          
          
       }//Navigation View
           
    }//body
  }//Main View


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
