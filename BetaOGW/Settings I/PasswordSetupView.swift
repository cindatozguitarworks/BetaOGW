//
//  PasswordSetupView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/15/21.
//

import SwiftUI


struct PasswordSetupView: View {
   
   @ObservedObject var tau6  = Tau6()
   

   @State var pChoice = ["No","Yes"]
   @State var rChoice = ["No","Yes"]
   
   @FocusState var focus1: Bool
   @FocusState var focus2: Bool
   @State var showPassword: Bool = false
   
   
    var body: some View {
       
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
           
                  
           Picker( String("Days between password ask  "), selection: $tau6.passwordDays, content: {
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
    }//form
      // .padding(20)
       .navigationTitle("Password User Setup")
    }//body
}//view


struct PasswordSetupView_Previews: PreviewProvider {

    static var previews: some View {
       NavigationView {
        PasswordSetupView()
       }
    }
}
