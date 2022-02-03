//
//  Settings2View.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/11/22.
//

import SwiftUI

struct Settings2View: View {
   
 //  @EnvironmentObject var stateManager: StateManager
   
   @State var tau6PisActive = false
   @State var ModPisActive = false
   
   @ObservedObject var tau6  = Tau6()
   
   
    var body: some View {
     NavigationView {
//
//         VStack {
//            Text("Settings II")
//               .font(.title)
//               .bold()
//
            Form{
    
    //MARK: - 1st Section
    Section(header: Text("Current Modules")) {
    
       List {
    
    //          ForEach ($tau6.modules)  {   module in
    //             HStack {
    //                tau6.modules[0].image
    //                   .resizable()
    //                   .aspectRatio( contentMode: .fit)
    //                   .frame(width: 100,height: 100)
    //
    //                Text(tau6.modules[0].name)
    //             }//hstack
    //          }
    
    
    NavigationLink(destination: ModuleView(),isActive: $tau6PisActive ){
    HStack {
    tau6.modules[0].image
    .resizable()
    .aspectRatio( contentMode: .fit)
    .frame(width: 100,height: 100)
    
    Text(tau6.modules[0].name)
    }//hstack
    }
    //          .swipeActions(edge: .leading) {
    //             Button{
    //                tau6PisActive.toggle()
    //             } label: {
    //                Image(systemName: "house")
    //                }//button
    //             .tint(.green)
    //             }//swipe
    //
    //          .swipeActions(edge: .trailing) {
    //             Button{
    //                ModPisActive.toggle()
    //             } label: {
    //                Text("Module Detail")
    //                }//button
    //             .tint(.gray)
    //
    //             }//swipe
    //             NavigationLink(destination: Tau6View(), isActive: $tau6PisActive ) {
    //                Image(systemName: "house")
    //            }//link
    //             .hidden()
    //          NavigationLink(destination: ModuleView(),
    //
    //              isActive: $ModPisActive ) {
    //             Image(systemName: "gear")
    //         }//link
    //          .hidden()
    
    
    //          HStack {
    //             tau6.modules[1].image
    //                .resizable()
    //                .aspectRatio( contentMode: .fit)
    //                .frame(width: 100,height: 100)
    //
    //             Text(tau6.modules[1].name)
    //          }
    //  })
    HStack {
    tau6.modules[2].image
    .resizable()
    .aspectRatio( contentMode: .fit)
    .frame(width: 100,height: 100)
    
    Text(tau6.modules[2].name)
    }//hstack
    
    HStack {
    tau6.modules[3].image
    .resizable()
    .aspectRatio( contentMode: .fit)
    .frame(width: 100,height: 100)
    
    Text(tau6.modules[3].name)
    }//hstack
    //          Text(tau6.modules[1].name)
    //          Text(tau6.modules[2].name)
    //          Text(tau6.modules[3].name)
    
    //        }//for
    }//list
    }//section 1
    
    
    

    //.navigationBarItems(leading: NavigationLink(destination: Settings1View(), label: { Image(systemName: "arrow.left") }) )
      .navigationBarTitle("Settings2" , displayMode: .inline)

            }//form
//         }//vstack
//         Spacer()
//         Spacer()
  }//nav
           .navigationViewStyle(StackNavigationViewStyle())
  //  }//swipe
//       .swipeActions(edge: .trailing) {
//          Button{
//             ModPisActive.toggle()
//          } label: {
//             Text("Module Detail")
//             }//button
//          .tint(.gray)
//       }//swipe
//    NavigationLink(destination: Tau6View(),
//                   isActive: $tau6PisActive ) {
//       Image(systemName: "house")
//   }//link
     
       
    }//body
}//view

struct Settings2View_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
        Settings2View()
        //     .environmentObject(StateManager())
       }
    }
}
