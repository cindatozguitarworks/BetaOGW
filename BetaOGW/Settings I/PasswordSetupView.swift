//
//  PasswordSetupView.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 12/15/21.
//

import SwiftUI


struct PasswordSetupView: View {
   @ObservedObject var tau6  = Tau6()
   
   @State var passwordOn: Bool = false
   @State var passwordChoice = ["No","Yes"]
   
   @FocusState var focus1: Bool
   @FocusState var focus2: Bool
   @State var showPassword: Bool = false
   
   
    var body: some View {
       
       Form{
   //MARK: -
        Section(header: Text("Passwords")) {
         HStack {
          Text("Use Password ")
              
          Spacer(minLength:  70)
          
          Toggle(isOn: $passwordOn) {
            if passwordOn {
               Text(passwordChoice[1])
            }else{
               Text(passwordChoice[0])
            }
           }.padding(20)
           
           }//hstack
           
           SecureField("Enter a Password", text: $tau6.password)
                Text("You entered: \(tau6.password) ")
          
           HStack{
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
           
         }//section
    }//form
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
