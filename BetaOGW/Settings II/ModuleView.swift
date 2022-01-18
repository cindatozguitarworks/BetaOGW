//
//  ModuleView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/14/22.
//

import SwiftUI

struct ModuleView: View {
   
   @ObservedObject var tau6  = Tau6()
   
   var body: some View {
      Form{
//MARK: - 1st Section
            Section(header: Text("Current Module")) {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
           
      } //section1
          
//MARK: - 2nd Section
             Section() {
                tau6.modules[0].image
                   .resizable()
                   .aspectRatio( contentMode: .fit)
                  // .frame(width: 100,height: 100)
      } //section2
                 
//MARK: - 3rd Section
      Section(header: Text("Module Details")) {
         Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
      }//section 3
    }//form
      .navigationBarTitle(tau6.modules[0].name)
   }//body
}//view

struct ModuleView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
        ModuleView()
    }
  }
}
