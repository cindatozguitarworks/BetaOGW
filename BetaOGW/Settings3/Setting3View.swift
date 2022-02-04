//
//  Setting3View.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/11/22.
//

import SwiftUI

struct Setting3View: View {
   @ObservedObject var tau6  = Tau6()
   
   @State var isPickup1: Bool = false
   @State var isPickup2: Bool = false
   @State var isPickup3: Bool = false
       
   var body: some View {
      NavigationView {
       Form{
          HStack {
          Button(action: {
             isPickup1.toggle()
          },label:  {
             Image(systemName: "arrowtriangle.up.circle")
                .font(.system(size: 25))
                .foregroundColor(.black)
           
         } )//button
             Spacer()
         Button(action: {
                isPickup2.toggle()
             },label:  {
                Image(systemName: "arrowtriangle.up.circle")
                   .font(.system(size: 25))
                   .foregroundColor(.black)
              
            } )//button
             Spacer()
         Button(action: {
                isPickup3.toggle()
             },label:  {
                Image(systemName: "arrowtriangle.up.circle")
                   .font(.system(size: 25))
                   .foregroundColor(.black)
              
            } )//button
          }//hstack
          
         
        }//form
       .navigationBarTitle("Pickup Use ", displayMode: .inline)
     }//nav
    .navigationViewStyle(StackNavigationViewStyle())
    
   }//body
}

struct Setting3View_Previews: PreviewProvider {
    static var previews: some View {
        Setting3View()
    }
}
