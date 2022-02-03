//
//  ModuleView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/14/22.
//

import SwiftUI

struct ModuleView: View {
   
   @Environment(\.dismiss) var dismiss
   
 //  @GestureState private var dragOffset = CGSize.zero
   
//   @ObservedObject var tabController = TabController()
   @ObservedObject var tau6  = Tau6()
   
   @State var pickNum = 1
   @State var greenBut = false
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
               
      Text("Module = \(tau6.modules[0].moduleNo)")
        Text("Pickup Layout = \(tau6.modules[0].layout)")
        Text("Module Wood = \(tau6.modules[0].wood)")
     } //section1
          
//MARK: - 2nd Section
             Section() {
                tau6.modules[0].image
                   .resizable()
                   .aspectRatio( contentMode: .fit)
                  // .frame(width: 100,height: 100)
                HStack{
                Spacer()
                   
                   Button(action: {
//                         pickNum = 0
                        },label: {
                           Image(systemName: "arrowtriangle.up.circle.fill")
                              .font(.system(size: 25))
                              .foregroundColor(.black)
                          // arrowtriangle.up.circle
                       } )//button
                   
                Spacer()
                   Button(action: {
//                         pickNum = 1
                        },label: {
                           Image(systemName: "arrowtriangle.up.circle.fill")
                              .font(.system(size: 25))
                              .foregroundColor(.green)
                         
                       } )//button
                Spacer()
                   Button(action: {
//                         pickNum = 2
                        },label: {
                           Image(systemName: "arrowtriangle.up.circle")
                              .font(.system(size: 25))
                              .foregroundColor(.black)
                         
                       } )//button
                   Spacer()
                }
      } //section2
                 
//MARK: - 3rd Section
         
      Section(header: Text("Pickup Details")) {
   
         Text("Pickup Used = \(tau6.pickup[pickNum].name)")
         Text("Type = \(tau6.pickup[pickNum].pickupType)")
         Text("Mount soft/med/hard = \(tau6.pickup[pickNum].mountType)")
         Text("Pickup location = \(tau6.pickup[pickNum].pickupLocation)")
         Text("Pickup orientation 0 to 180  = \(tau6.pickup[pickNum].pickupOrientation)")
         Text("Bass string Clearance = \(tau6.pickup[pickNum].bassClearance)")
         Text("Treble String Clearance = \(tau6.pickup[pickNum].trebleClearance)")
        
      }//section 3
         Spacer()
      
    }//form
        
  //     .navigationBarTitle(tau6.modules[0].name)
      .navigationBarTitle("Module Setup", displayMode: .inline)
 
     //  .navigationBarBackButtonHidden(true)

//       .navigationBarItems(leading: NavigationLink(destination: Settings2View(), label: { Image(systemName: "arrow.left") }) )
      
//       .navigationBarItems(trailing: NavigationLink(destination: InfoView(), label: { Image(systemName: "info.circle") }) )
//
      
//       .toolbar {
//          ToolbarItemGroup(placement: .navigationBarLeading){
//
//             Button("Modules") {
//                tabController.open(TabController.Tab.settings2)
//             }
//            }
//
//         ToolbarItem(placement: .navigation) {
//          Image(systemName: "arrow.left")
//              // .foregroundColor(.blue)
//               .onTapGesture {  self.mode.wrappedValue.dismiss()
//            }
      //   }

//       }//toolbar
       
//       .accentColor(.blue)
      // .bold()
//         }//vstack
         .navigationViewStyle(StackNavigationViewStyle())
      
      }//nav
   }//body
}//view

struct ModuleView_Previews: PreviewProvider {
    static var previews: some View {
     //  NavigationView {
        ModuleView()
        //     .environmentObject(TabController())
            
//  }
}
}
