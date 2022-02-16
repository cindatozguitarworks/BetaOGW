//
//  VolumeView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/15/21.
//

import SwiftUI

struct VolumeView: View {
   
   @EnvironmentObject var tau6: Tau6
       
   var body: some View {
      NavigationView{
       Form{
        }//form
       .navigationBarTitle("Volume ", displayMode: .inline)
     }//nav
    .navigationViewStyle(StackNavigationViewStyle())
    
   }//body
}//view

struct VolumeView_Previews: PreviewProvider {
    static var previews: some View {
    //   NavigationView {
        VolumeView()
          .environmentObject(Tau6())
     //  }
    }
}
