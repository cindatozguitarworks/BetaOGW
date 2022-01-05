//
//  InfoView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/14/21.
//

import SwiftUI

struct InfoView: View {
   
    var body: some View {
       VStack{
          Text("Info on Guitar Screen - Upper Right Circle")
         Spacer()
      } .padding()
        .navigationBarTitle("Info")
    }
  }

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
        InfoView()
       }
    }
}
