//
//  BetaOGWApp.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/7/21.
//

import SwiftUI

@main
struct BetaOGWApp: App {
   
//   @StateObject var stateManager = StateManager()
   @EnvironmentObject var tau6: Tau6
     
   
//   @ObservedObject var tau6  = Tau6()
   
    var body: some Scene {
       
        WindowGroup {
           ContentView()
//              .environmentObject(stateManager)
              .environmentObject(Tau6())
        }//windowgroup
    }//scene
}//app


