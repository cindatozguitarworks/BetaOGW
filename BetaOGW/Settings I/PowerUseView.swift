//
//  PowerUseView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/15/21.
//

import SwiftUI

struct PowerUseView: View {
   
   @EnvironmentObject var tau6: Tau6
   @State var nChoice = ["No","Yes"]
   @State var vChoice = ["No","Yes"]
var body: some View {

   NavigationView {
      Form{
      //MARK: - 1st Section -
         Section(header: Text("Positive +9V")) {
            Text(" Current supply voltage = \(tau6.positiveCurrentVoltage)")
            Text(" Percent Available = \(tau6.positivePercentAvailable)")
         }//Section 1
        //MARK: - 2nd Section -
           Section(header: Text("Negative -9V")) {
            Text(" Current supply voltage = \(tau6.negativeCurrentVoltage)")
            Text("  Percent Available = \(tau6.negativePercentAvailable)")
           }//Section 2
        
        //MARK: - 3nd Section -
           Section(header: Text("Notifications")) {
        HStack {
          Text("Notify thru App ")
          Spacer(minLength:  45)
           Toggle(isOn: $tau6.appNotificationOn) {
              Text( (tau6.appNotificationOn == true) ? nChoice[1] :nChoice[0])
           }//toggle
          }//hstack
              
         Picker( String("Alert w/usage stats  "), selection: $tau6.textAlerts, content: {
               Text(" none ").tag("No")
               Text(" App ").tag("App")
               Text(" text ").tag(" text")
               Text(" email ").tag("email ")
            })
              
         Picker( String("Low Power Warnings  "), selection: $tau6.loPowerAlerts, content: {
            Text(" none ").tag(" 0 ")
            Text(" 10% ").tag(" 10 ")
            Text(" 20% ").tag(" 20 ")
            Text(" 25% ").tag(" 25 ")
            Text(" 30% ").tag(" 30 ")
         })
              
         Picker( String("Critical Low Power Alert "), selection: $tau6.loPowerWarning, content: {
                 Text(" none ").tag(" 0 ")
                 Text(" 5% ").tag(" 5 ")
                 Text(" 10% ").tag(" 10 ")
                 Text(" 20% ").tag(" 20 ")
              })
              
      }//Section 3
        //MARK: - 4th Section -
           Section(header: Text("Guitar Power Savings")) {
              
              Picker( String("Guitar Sleep after No Motion "), selection: $tau6.sleepNoMotion, content: {
                      Text(" 3 min ").tag(" 3 ")
                      Text(" 5 min ").tag(" 5 ")
                      Text(" 10 min ").tag(" 10 ")
                      Text(" 15 min ").tag(" 15 ")
                      Text(" 20 min ").tag(" 20 ")
                   })
              
              Picker( String("Guitar Sleep after No Play "), selection: $tau6.sleepNoPlay, content: {
                      Text(" 3 min ").tag(" 3 ")
                      Text(" 5 min ").tag(" 5 ")
                      Text(" 10 min ").tag(" 10 ")
                      Text(" 15 min ").tag(" 15 ")
                      Text(" 20 min ").tag(" 20 ")
                   })
              
              Picker( String("Guitar blank screen after Gear Shift "), selection: $tau6.blankGearShift, content: {
                      Text(" 3 min ").tag(" 3 ")
                      Text(" 5 min ").tag(" 5 ")
                      Text(" 10 min ").tag(" 10 ")
                      Text(" 15 min ").tag(" 15 ")
                      Text(" 20 min ").tag(" 20 ")
                   })
              
              HStack {
                Text("Guitar blank screen with Vol change ")
                Spacer(minLength:  45)
                 Toggle(isOn: $tau6.blankVolChange) {
                    Text( (tau6.blankVolChange == true) ? vChoice[1] :vChoice[0])
                 }//toggle
                }//hstack
           }//Section 4
         
       
      }//Form
     .navigationBarTitle("Power Use ", displayMode: .inline)
   }//nav
  .navigationViewStyle(StackNavigationViewStyle())
 
 }//body
}//view

struct PowerUseView_Previews:
    PreviewProvider {
    static var previews: some View {
       NavigationView {
        PowerUseView()
             .environmentObject(Tau6())
       }
    }
}
