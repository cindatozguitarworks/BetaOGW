//
//  currThemeView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/7/22.
//

import SwiftUI

struct currThemeView: View {
   @ObservedObject var tau6  = Tau6()
       
   var body: some View {
       Form{
        }//form
       .navigationBarTitle("Theme Page")
    
   }//body
}//view


struct currThemeView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
        currThemeView()
       }
    }
}
