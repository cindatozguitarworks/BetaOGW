//
//  ModuleView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/14/22.
//

import SwiftUI

struct ModuleView: View {
   
//   @Environment(\.dismiss) var dismiss
   
 //  @GestureState private var dragOffset = CGSize.zero
   
//   @ObservedObject var tabController = TabController()
   @EnvironmentObject var tau6: Tau6
   
   @State var isPickup1: Bool = false
   @State var isPickup2: Bool = false
   @State var isPickup3: Bool = false
//   @State var pickNum = 0
   @State var greenBut = false
   @State var pickupChoice = ["One","Two","Three"]
 //  @GestureState priv
   
   
   var body: some View {
      NavigationView {
         
//         VStack {
//            Text(tau6.modules[0].name)
//               .font(.title)
//               .bold()
      Form{
//MARK: - 1st Section
         Section(header: Text("Current Module ")) {
               
            Text("Module = \(tau6.modules[tau6.moduleNum].moduleNo)")
      Text("Pickup Layout = \(tau6.modules[tau6.moduleNum].layout)")
        Text("Module Wood = \(tau6.modules[tau6.moduleNum].wood)")
     } //section1
          
//MARK: - 2nd Section
             Section() {
                tau6.modules[tau6.moduleNum].image
                   .resizable()
                   .aspectRatio( contentMode: .fit)
                  // .frame(width: 100,height: 100)
               
                Spacer()
                   HStack{
                    //Text("Unit Choice =")
                      Picker("Pickup No", selection: $tau6.pickNum) {
                            ForEach(0 ..< pickupChoice.count){
                              Text(self.pickupChoice[$0])
                            }
                   }.pickerStyle(SegmentedPickerStyle())
                  }//stack
                   

      } //section2
                 
//MARK: - 3rd Section
         
      Section(header: Text("Pickup Details")) {
//         Text(String(pickNum))
         NavigationLink(destination: Setting3View()
                        , label: { Text( "Pickup Used = \(tau6.pickup[tau6.pickNum].name)")
                    })
         
        Text("Pickup Used = \(tau6.pickup[tau6.pickNum].name)")
         Text("Type = \(tau6.pickup[tau6.pickNum].pickupType)")
         Text("Mount soft/med/hard = \(tau6.pickup[tau6.pickNum].mountType)")
         Text("Pickup location = \(tau6.pickup[tau6.pickNum].pickupLocation)")
         Text("Pickup orientation 0 to 180  = \(tau6.pickup[tau6.pickNum].pickupOrientation)")
         Text("Bass string Clearance = \(tau6.pickup[tau6.pickNum].bassClearance)")
         Text("Treble String Clearance = \(tau6.pickup[tau6.pickNum].trebleClearance)")
        
      }//section 3
  
      
    }//form
        
     .navigationBarTitle(tau6.modules[tau6.moduleNum].name,displayMode: .inline)
   //   .navigationBarTitle("Module Setup", displayMode: .inline)
 
   
//         }//vstack
      
      
      }//nav
      .navigationViewStyle(StackNavigationViewStyle())
   }//body
}//view

struct ModuleView_Previews: PreviewProvider {
    static var previews: some View {
     //  NavigationView {
        ModuleView()
          .environmentObject(Tau6())
            
//  }
}
}
