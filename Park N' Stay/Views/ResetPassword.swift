//
//  ResetPassword.swift
//  Park N' Stay v1
//
//  Created by Assel ALQasem on 21/06/1443 AH.
//

import SwiftUI

struct ResetPassword: View {
    @State private var Email = ""
   
    var body: some View {
        
        ZStack{
            VStack{
                
                Image("Logo")
                Text("Forget your Password ?")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                Text(" ")
                    .frame(width:330, alignment: .leading )
                    .background(Rectangle().stroke())
                Text("Email Address:")
                       .foregroundColor(Color.white)
                       .frame(width:330, alignment: .leading )
                       .background(Rectangle().stroke())
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("Light"))
                    .opacity(0.8)
                    .frame(width : 340, height: 44)
                
                TextField("example@apple.com", text: $Email)
                    .frame(width:330)
                HStack{
                    
                    Text("Remeber Password?")
                        .foregroundColor(Color.white)
                    NavigationLink("Login",destination: login())
                        .foregroundColor(Color("Pink"))
                }
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("Pink"))
                    .frame(width: 340, height: 44)
                    .overlay(NavigationLink("Send",destination: ResetPassword1()))
                    .foregroundColor(Color.white)
                    .padding()
            }
        }.ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Navy"))
        
    }
}
struct ResetPassword_Previews: PreviewProvider {
    static var previews: some View {
        ResetPassword()
    }
}

