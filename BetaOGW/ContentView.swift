//
//  ContentView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/7/21.
//

import SwiftUI

struct ContentView: View {
   @State var ownerName: String = "Oz Anderson"
   @State var ownerReg: String = "123456789"
   @State var scaleLen: String = "1.234"
   
   @State var partNum: String = "123456"
   @State var serialNum: String = "12aBc3456D"
   
   @State var passwordOn: Bool = false
   @State var userDetailIndex = 0
   @State var userDetailLevel = ["Normal","HardCore"]
   
   
   
   
    var body: some View {
      NavigationView {
         Form{
            Section(header: Text("General Guitar")) {
              Text(" Owner \(ownerName)")
              Text(" Owner Registration #  \(ownerReg)")
              Text(" Scale Length =  \(scaleLen)")
              Text(" Part # =  \(partNum)")
              Text(" Serial # = \(serialNum)")
               
               
              Toggle(isOn: $passwordOn){
                  Text ("Password On")
               }
            }//section1
               Section(header: Text("User General")) {
                  Picker(selection: $userDetailIndex, label: Text("User Detail Level" )){
                  ForEach(0 ..< userDetailLevel.count){
                     Text(self.userDetailLevel[$0])
                  }
               }
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
