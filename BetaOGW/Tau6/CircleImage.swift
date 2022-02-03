//
//  CircleImage.swift
//  BetaOGW
//
//  Created by Cynthia Anderson on 1/12/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
       
        Image("OGWMan")
          .resizable()
          .aspectRatio( contentMode: .fit)
          .clipShape(Circle())
          .overlay {
             Circle().stroke(.white,lineWidth: 4)
             
          }
          .shadow( radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
