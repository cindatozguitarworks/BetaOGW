//
//  Settings1View.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/18/22.
//

import SwiftUI

struct Settings1View: View {
   
   @ObservedObject var tau6  = Tau6()
   
//   @EnvironmentObject var stateManager: StateManager
//   @ObservedObject  var tabController = TabController()
   
//   @State private var   upDatePShow: Bool = false
  
   @State var unitChoice = ["English","Metric"]
   
   @State var passwordOn = true


   @State var userDetailLevel = ["Normal","HardCore"]
   
   
   
    var body: some View {
       
       NavigationView {
          
//          VStack {
//             Text("Settings I")
//                .font(.title)
//                .bold()
             
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
               HStack{
                Text("Unit Choice =")
                  Picker("English or Metric", selection: $tau6.units) {
                        ForEach(0 ..< unitChoice.count){
                          Text(self.unitChoice[$0])
                        }
               }.pickerStyle(SegmentedPickerStyle())
              }//stack
            }//section1
   //
   //MARK: - SECOND SECTION
   //
                  Section(header: Text("User General")) {
   
                     HStack{
                     Text("User Detail Level")
                     Picker("User Detail Level", selection: $tau6.userDetailIndex) {
                         ForEach(0 ..< userDetailLevel.count){
                          Text(self.userDetailLevel[$0])
                       }
                  }.pickerStyle(SegmentedPickerStyle())
                 }//Hstack
   
              NavigationLink(destination: PasswordSetupView(), label: {
                 VStack{
                    HStack{
                    Text("Password Use    ")
                       Spacer()
                    }//hstack
                    HStack{
                 Text("Guitar Password Protection ").font(.subheadline)
                       .opacity(0.5)
                       Spacer()
                    }//hstack
                 }//vstack
              } )
   
                     NavigationLink(destination: PowerUseView(), label: {
                     VStack{
                        HStack{
                        Text( "Power Use    \(tau6.positiveCurrentVoltage) , \(tau6.negativeCurrentVoltage) ")
                           Spacer()
                            }//hstack
                        HStack{
                        Text("Guitar Battery Use ").font(.subheadline)
                           .opacity(0.5)
                           Spacer()
                          }//hstack
                     }//vstack
               })
   
            NavigationLink(destination: VolumeView(), label: { Text( " Volume Control")
            })
   
           NavigationLink(destination: ToneView(), label: { Text( " Tone Control")
            })

            }//section 2
               //MARK: - THIRD SECTION
   
            Section(header: Text("Pickup Info")) {
               NavigationLink(destination: Settings2View(), label: { Text( "Current Module = ")
               })
   
              NavigationLink(destination: currThemeView(), label: { Text( "Current Theme = ")
               })
               NavigationLink(destination: currPresetView(), label: { Text( "Current Preset = ")
                })   }//section 3
             
           }//form
             .navigationBarTitle("Settings1"  , displayMode: .inline)
//             Spacer()
//             Spacer()
//          }//vstack
       
    
      
            }//nav
       .navigationBarItems(trailing: NavigationLink(destination: InfoView(), label: { Image(systemName: "info.circle")
      }))
  
        .navigationBarBackButtonHidden(true)

         .navigationBarItems(leading: NavigationLink(destination: Tau6View(),
         label: { Image(systemName: "arrow.left") }) )
       
      .navigationViewStyle(StackNavigationViewStyle())
       
//       NavigationLink(destination: UpdateView(),
//                      isActive: $stateManager.upDateShow, label: { Text( " Tau6 Firmware Ver# =     \(tau6.firmwareVersion)")})
//
//  }//Navigation View
   
    }//body
//
}//view

struct Settings1View_Previews: PreviewProvider {
    static var previews: some View {
//NavigationView {
        Settings1View()
           //  .environmentObject(StateManager())
//             .environmentObject(TabController())
//    }
   }
}
