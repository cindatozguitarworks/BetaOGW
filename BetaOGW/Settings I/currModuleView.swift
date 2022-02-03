//
//  currModuleView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/7/22.
//

import SwiftUI

struct currModuleView: View {
   @ObservedObject var tau6  = Tau6()
       
   var body: some View {
      NavigationView {
       Form{
        }//form
       .navigationBarTitle("Current Module Use ", displayMode: .inline)
     }//nav
    .navigationViewStyle(StackNavigationViewStyle())
    
   }//body
}//view

struct currModuleView_Previews: PreviewProvider {
    static var previews: some View {
//       NavigationView {
        currModuleView()
//       }
    }
}
