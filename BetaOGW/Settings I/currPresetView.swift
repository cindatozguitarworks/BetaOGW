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
       Form{
        }//form
       .navigationBarTitle("Preset Page")
    
   }//body
}//view


struct currPresetView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
        currPresetView()
       }
    }
}
