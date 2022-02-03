//
//  currPresetView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/7/22.
//

import SwiftUI

struct currPresetView: View {
   @ObservedObject var tau6  = Tau6()
       
   var body: some View {
      NavigationView {
       Form{
        }//form
       .navigationBarTitle("Preset Page ", displayMode: .inline)
     }//nav
    .navigationViewStyle(StackNavigationViewStyle())
    
   }//body
}//view


struct currPresetView_Previews: PreviewProvider {
    static var previews: some View {
       
        currPresetView()
       
       
    }
}
