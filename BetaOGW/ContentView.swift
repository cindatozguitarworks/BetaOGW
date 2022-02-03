//
//  ContentView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/7/21.
//

import SwiftUI

struct ContentView: View {
     
  // @EnvironmentObject var stateManager: StateManager
 //  @ObservedObject var tabController = TabController()
   
    var body: some View {
//       NavigationView {
          TabView {
             
             Tau6View()
//             .tabItem({})
//             .tag(TabController.Tab.tau6)
//
           Settings1View()
//                .tabItem({})
//                .tag(TabController.Tab.settings1)
             
           Settings2View()
//                .tabItem({})
//                .tag(TabController.Tab.settings2)
                //  Setting3View()
        
                }//tabview
          .tabViewStyle(.page(indexDisplayMode: .always))
          .indexViewStyle(.page(backgroundDisplayMode: .always))
     //             .edgesIgnoringSafeArea(.top)
    }//body
   
  }//Main View


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
 
        ContentView()
    //      .environmentObject(StateManager())
//          .environmentObject(TabController())
 
    }
}
