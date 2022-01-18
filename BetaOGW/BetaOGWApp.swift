//
//  BetaOGWApp.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/7/21.
//

import SwiftUI

@main
struct BetaOGWApp: App {
   @ObservedObject var tau6  = Tau6()
   
    var body: some Scene {
       
        WindowGroup {
           MainView()
        }//windowgroup
    }//scene
}//app


