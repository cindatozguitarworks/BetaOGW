//
//  ModuleRow.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/14/22.
//

import SwiftUI

struct ModuleRow: View {
   
   @EnvironmentObject var tau6: Tau6
   
   
   
//   var moduleRow :
   
    var body: some View {
       
       HStack {
          tau6.modules[0].image
             .resizable()
             .aspectRatio( contentMode: .fit)
             .frame(width: 100,height: 100)
             
          Text(tau6.modules[0].name)
       }//hstack
    }
}

struct ModuleRow_Previews: PreviewProvider {
    static var previews: some View {
        ModuleRow()
          .environmentObject(Tau6())
       
    }
}
