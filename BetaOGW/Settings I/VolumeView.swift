//
//  VolumeView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/15/21.
//

import SwiftUI

struct VolumeView: View {
   
   @ObservedObject var tau6  = Tau6()
       
   var body: some View {
       Form{
        }//form
       .navigationBarTitle("Volume Control")
    
   }//body
}//view

struct VolumeView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
        VolumeView()
       }
    }
}
