//
//  StateManager.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/25/22.
//

import Foundation
//
class StateManager: ObservableObject {
//   
   @Published var selection: Int = 1

   @Published var passwordPageShown: Bool = false
   @Published var selectedItem: String? = nil
   
   //  @Published var activeTabIndex: Int = 0
//   
//   
//  @Published var  upDatePShow: Bool = false
//   
}//class

//class TabController: ObservableObject {
//
//   enum Tab {
//      case tau6
//      case settings1
//      case settings2
//
//   }
//@Published var activeTab =  Tab.tau6
//
//func open(_ tab: Tab) {
//   activeTab = tab
//   }//func
//
// } //class
