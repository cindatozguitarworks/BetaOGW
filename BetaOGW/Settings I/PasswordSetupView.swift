//
//  PasswordSetupView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/15/21.
//

import SwiftUI


struct PasswordSetupView: View {
   
// @Environment(\.presentationMode) var presentationMode
   
 //  @EnvironmentObject var stateManager: StateManager
   
//   @Environment(\.presentationMode) var mode: Binding<PresentationMode>
   
//   @GestureState private var dragOffset = CGSize.zero
   
   
   @EnvironmentObject var tau6: Tau6
  

   @State var pChoice = ["No","Yes"]
   @State var rChoice = ["No","Yes"]
   
   @FocusState var focus1: Bool
   @FocusState var focus2: Bool
   @State var showPassword: Bool = false
   
   
    var body: some View {
       NavigationView{
       Form{
   //MARK: -
        Section(header: Text("Passwords")) {
        
         HStack {
           Text("Use Password ")
            
           Spacer(minLength:  45)
            
            Toggle(isOn: $tau6.passwordOn) {
               Text( (tau6.passwordOn == true) ? pChoice[1] :pChoice[0])
            }//toggle
           }//hstack
           
         HStack{
//            if (tau6.passwordOn == false) {
//               tau6.password = "" }
               
           ZStack(alignment: .trailing) {
             TextField("Password", text: $tau6.password)
                //  Add- check for good password??  .modifier(LoginModifier())
                    .focused($focus1)
                    .opacity(showPassword ? 1 : 0 )
                 SecureField("Password", text: $tau6.password)
                 //   .modifier(LoginModifier())
                    .focused($focus2)
                    .opacity(showPassword ? 0 : 1 )
             Button(action: {
                    showPassword.toggle()
                    if showPassword { focus1 = true } else { focus2 = true }
                  },label: {
                     Image(systemName: self.showPassword ? "eye.slash.fill" : "eye.fill" )
                              .font(.system(size: 16, weight: .regular))
                   
                 } )//button
              }//zstack
           }//hstack
         .disabled(!tau6.passwordOn)
         .opacity(tau6.passwordOn ? 1 : 0)
           
                  
           Picker( String("Days between password ask  \(tau6.passwordDays)"), selection: $tau6.passwordDays, content: {
              Text(" 1 ").tag(" 1 ")
              Text(" 7 ").tag(" 7 ")
              Text(" 14 ").tag(" 14 ")
              Text(" 30 ").tag(" 30 ")
              Text(" 60 ").tag(" 60 ")
              Text(" 90").tag(" 90 ")
               })
           
           HStack {
             Text("Reset count at phone close ")
              
             Spacer(minLength:  45)
              
             Toggle(isOn: $tau6.resetCountOn) {
                 Text( (tau6.resetCountOn == true) ? rChoice[1] :rChoice[0])
                       }//toggle
             }//hstack
         }//section
//          Button(action: {
//             presentationMode.wrappedValue.dismiss()
//
//          }, label: {Text ("Back One")
//          })
//
    }//form
      // .padding(20)
    
       .navigationBarTitle("Password User Setup", displayMode: .inline)
    
    
      
//      .navigationBarBackButtonHidden(true)
//
//      .navigationBarItems(leading: Button(action: {
//           self.mode.wrappedValue.dismiss()
//     }){
//         Image(systemName: "arrow.left")
//      })
//    .frame(maxWidth: .infinity, maxHeight: .infinity)
//       .gesture(DragGesture().updating( $dragOffset, body: { (value, state, transaction) in
//          if (value.startLocation.x < 20 && value.translation.width > 100) {
//             self.mode.wrappedValue.dismiss()
//          }
//       }))
    
       }//nav
       .navigationViewStyle(StackNavigationViewStyle())
//      .navigationBarBackButtonHidden(true)

    }//body
}//view


struct PasswordSetupView_Previews: PreviewProvider {

    static var previews: some View {
       NavigationView {
        PasswordSetupView()
//             .environmentObject(StateManager())
             .environmentObject(Tau6())
       }
    }
}
