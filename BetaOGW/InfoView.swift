//
//  InfoView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/14/21.
//

import SwiftUI

struct InfoView: View {
   
    var body: some View {
       NavigationView {
          VStack{
             Text("Info on Guitar Screen - Upper Right Circle")
            Spacer()
         } .padding()
             .navigationBarTitle( "Info", displayMode: .inline)
           }//nav
             .navigationViewStyle(StackNavigationViewStyle())
       
    }
  }

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
      
        InfoView()
       
    }
}
