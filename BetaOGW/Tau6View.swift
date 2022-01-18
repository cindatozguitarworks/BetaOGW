//
//  Tau6View.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/11/22.
//

import SwiftUI


struct Tau6View: View {
   @ObservedObject var tau6  = Tau6()
   
    var body: some View {
     //  Form{
       
      VStack{
         
         Spacer()
         
         Text("Tau6 App")
                .font(.title)
                .bold()
            
         
         CircleImage()
//            .offset(y: -130)
//            .padding(.bottom, -130)
         
            // Spacer()
         Spacer()
    
          }//VSTACK 1
          
        // }//form
  //  .navigationBarTitle("Tau6 App")
  }//body
}//view


struct Tau6View_Previews: PreviewProvider {
    static var previews: some View {
      // NavigationView {
        Tau6View()
     // }
    }
}
