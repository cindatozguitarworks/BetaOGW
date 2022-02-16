//
//  ContentView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/7/21.
//

import SwiftUI

struct ContentView: View {
     
//  @EnvironmentObject var stateManager: StateManager
 //  @ObservedObject var tabController = TabController()
     
   @EnvironmentObject var tau6: Tau6
   
    var body: some View {
//       NavigationView {
       TabView {
             
             Tau6View()
             .tabItem({})
             .tag(1)
//             .tag(TabController.Tab.tau6)

           Settings1View()
               .tabItem({})
               .tag(2)
//                .tag(TabController.Tab.settings1)
             
           Settings2View()
                .tabItem({})
                .tag(3)
//                .tag(TabController.Tab.settings2)
               
//          Setting3View()
                .tag(4)
                }//tabview
          .tabViewStyle(.page(indexDisplayMode: .always))
          .indexViewStyle(.page(backgroundDisplayMode: .always))
     //             .edgesIgnoringSafeArea(.top)
    }//body
   
  }//Main View


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
 
        ContentView()
//           .environmentObject(StateManager())
//          .environmentObject(TabController())
          .environmentObject(Tau6())
    }
}
