//
//  UpdateView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/15/21.
//

import SwiftUI

struct UpdateView: View {
   
   @EnvironmentObject var tau6: Tau6
   
    @State private var selected: String? = nil
   
 //  @State var firmwareVersion: String = "NvrCrsh2"
   
    var body: some View {
       NavigationView {
          
//          VStack {
//             Text("Firmware Rev")
//                .font(.title)
//                .bold()
       
       Form{
         
          
   //MARK: - 1st Section
      Section(header: Text("General Guitar")) {
         
         Text("Firmware Revision =  \(tau6.firmwareVersion)")
         
         HStack{
         Spacer()
            Button(action: { print(tau6.model)
                print(UIDevice.current.modelName)
            })
            {
            Text(" Update ")
            }.font(.headline)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
            
            
            Spacer()
         }

        Image("FirmwareUpdatePic")
          .resizable()
          .aspectRatio( contentMode: .fit)
      } //section1
          
          //MARK: - 2nd Section
             Section(header: Text("Log")) {
                List{
                Text("1/3/2022 update successful")
                Text("11/4/2021 update successful")
                Text("add a list here - Keep how many")
                }//LIST
             }//section 2
//       }//vstack
       }//form
       .navigationBarTitle("Firmware Update", displayMode: .inline)
      
    
//      .navigationBarBackButtonHidden(true)
//
//      .navigationBarItems(leading: NavigationLink(destination: Settings1View(),
//      label: { Image(systemName: "arrow.left") }) )
//
       }//form
       .navigationViewStyle(StackNavigationViewStyle())
   }//body

}//view

struct UpdateView_Previews: PreviewProvider {
    static var previews: some View {
     //  NavigationView {
          UpdateView()
          .environmentObject(Tau6())
    }
  //  }
}
