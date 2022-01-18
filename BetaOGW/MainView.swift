//
//  MainView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/17/22.
//

import SwiftUI

struct MainView: View {
   

   
    var body: some View {
   
       TabView {
          Tau6View()
          //ContentView().tag(1)
          Settings2View().tag(2)
           //  Setting3View()
          
       }//tabview
             .tabViewStyle(PageTabViewStyle())
             .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
             .edgesIgnoringSafeArea(.top)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
