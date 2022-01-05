//
//  UpdateView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/15/21.
//

import SwiftUI

struct UpdateView: View {
   
   @ObservedObject var tau6  = Tau6()
   
 //  @State var firmwareVersion: String = "NvrCrsh2"
   
    var body: some View {
       Form{
         
          
   //MARK: - 1st Section
      Section(header: Text("General Guitar")) {
         
         Text("Firmware Revision =  \(tau6.firmwareVersion)")
         
         HStack{
         Spacer()
            Button(action: { })
            {
            Text(" Update ")
            }.border(.black )
            .foregroundColor(Color.white)
            .background(.blue)
            
            
            
            Spacer()
         }

        Image("FirmwareUpdatePic")
          .resizable()
          .aspectRatio( contentMode: .fit)
      } //section1
          //MARK: - 2nd Section
             Section(header: Text("Log")) {
                Text("1/3/2022 update successful")
                Text("11/4/2021 update successful")
                Text("add a list here - Keep how many")
             }//section 2
          
      .navigationBarTitle("Firmware Rev")
       
       }//form
   }//body

}//view

struct UpdateView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
          UpdateView() }
    }
}
