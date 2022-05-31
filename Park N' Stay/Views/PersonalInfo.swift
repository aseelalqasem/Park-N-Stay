//
//  PersonalInfo.swift
//  Park N' Stay
//
//  Created by Rand  on 22/06/1443 AH.
//

import SwiftUI

struct PersonalInfo: View {
    
    @State private var Username = ""
    @State private var Email = ""
    @State private var Password = ""
    
    var body: some View {
        ZStack{
        VStack{
            
                
                 
                                    Text("UserName")
                                        .foregroundColor(Color.white)
                                        .frame(width:340, alignment: .leading )
            ZStack{
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color("Light"))
                                        .opacity(0.8)
                                        .frame(width : 340, height: 44)
        
                                    TextField("Enter your name", text: $Username)
                                        .frame(width:340)
            }
                                    Text("Email")
                                        .foregroundColor(Color.white)
                                        .frame(width:340, alignment: .leading )
            ZStack{
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color("Light"))
                                        .opacity(0.8)
                                        .frame(width : 340, height: 44)
        
                                    TextField("example@apple.com", text: $Email)
                                        .frame(width:340)
            }
                                    Text("Password")
                                        .foregroundColor(Color.white)
                                        .frame(width:340, alignment: .leading )
            ZStack{
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color("Light"))
                                        .opacity(0.8)
                                        .frame(width : 340, height: 44)
            SecureField("Enter a password", text: $Password)
            .frame(width:330)
            }
        }
        }
    }
}

struct PersonalInfo_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfo()
    }
}
