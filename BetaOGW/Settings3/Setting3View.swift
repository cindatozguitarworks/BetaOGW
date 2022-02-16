//
//  Setting3View.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/11/22.
//

import SwiftUI

struct Setting3View: View {
   @EnvironmentObject var tau6: Tau6
//   @Environment(\.dismiss) var dismiss
   
       
   var body: some View {
      NavigationView {
       Form{
       
          Section(header: Text("Pickup Details")) {
    //         Text(String(pickNum))
     //        Text("Pickup Used = \(tau6.pickup[tau6.pickNum].name)")
             Text("Type = \(tau6.pickup[tau6.pickNum].pickupType)")
             Text("Manufacturer = \(tau6.pickup[tau6.pickNum].manufact)")
             Text("Cover = \(tau6.pickup[tau6.pickNum].cover)")
             Text("Ground wire  = \(tau6.pickup[tau6.pickNum].grndWire)")
             NavigationLink(destination: PickupDimView(), label: { Text( "Dimensions  ")
                        })
            Text("Upper coil mag polarity = \(tau6.pickup[tau6.pickNum].upperPolarity)")
          }//section 1
          Section(header: Text("North Details")) {
        
             Text("Inductance = \(tau6.pickup[tau6.pickNum].northInductance)")
             Text("Resistance = \(tau6.pickup[tau6.pickNum].northResistance)")
             Text("Capacitance = \(tau6.pickup[tau6.pickNum].northCapictance)")
             Text("Starting Wire Color = \(tau6.pickup[tau6.pickNum].northStartWireCol)")
             Text("Ending Color = \(tau6.pickup[tau6.pickNum].northEndWireCol)")
          }//section2
     
       Section(header: Text("South Details")) {
     
          Text("Inductance = \(tau6.pickup[tau6.pickNum].southInductance)")
          Text("Resistance = \(tau6.pickup[tau6.pickNum].southResistance)")
          Text("Capacitance = \(tau6.pickup[tau6.pickNum].southCapictance)")
          Text("Starting Wire Color = \(tau6.pickup[tau6.pickNum].southStartWireCol)")
          Text("Ending Color = \(tau6.pickup[tau6.pickNum].southEndWireCol)")
       }//section3
        }//form
            
         .navigationBarTitle(tau6.pickup[tau6.pickNum].name,displayMode: .inline)
       //   .navigationBarTitle("Module Setup", displayMode: .inline)
     
     }//nav
    .navigationViewStyle(StackNavigationViewStyle())
//    .swipeActions() {
//              Button("") {
//                 dismiss()  } }
   }//body
}

struct Setting3View_Previews: PreviewProvider {
    static var previews: some View {
        Setting3View()
          .environmentObject(Tau6())
    }
}
