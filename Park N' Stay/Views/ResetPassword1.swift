//
//  ResetPassword1.swift
//  Park N' Stay v1
//
//  Created by Assel ALQasem on 21/06/1443 AH.
//

import SwiftUI

struct ResetPassword1: View {

    var body: some View {
      
        ZStack{
            VStack{
                
                Image("Logo")
                Text("Email has been sent ! ")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                Text(" ")
                    .frame(width:330, alignment: .leading )
                    
                Text("Please check your inbox and click the recived link to reset your password ")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                       
               
               RoundedRectangle(cornerRadius: 15)
                    .fill(Color("Pink"))
                    .frame(width: 340, height: 44)
                    .overlay(NavigationLink("Log in",destination:  login()))
                    .foregroundColor(Color.white)
                    .padding()
                
//                self.showContentView = true

               HStack{
                   
                   Text("Did not receive the link ?")
                       .foregroundColor(Color.white)
                   Text("Resend")
                       .fontWeight(.bold)
                       .foregroundColor(Color("Pink"))
               }
            }
            
        }.ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Navy"))
    }
}

struct ResetPassword1_Previews: PreviewProvider {
    static var previews: some View {
        ResetPassword1()
    }
}

