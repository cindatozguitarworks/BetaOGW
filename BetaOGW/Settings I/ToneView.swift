//
//  ToneView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/15/21.
//

import SwiftUI

struct ToneView: View {
   @ObservedObject var tau6  = Tau6()
       
   var body: some View {
      NavigationView {
       Form{
        }//form
       .navigationBarTitle("Tone Use ", displayMode: .inline)
     }//nav
    .navigationViewStyle(StackNavigationViewStyle())
    
   }//body
}//view

struct ToneView_Previews: PreviewProvider {
    static var previews: some View {
       
        ToneView()
      
    }
}
