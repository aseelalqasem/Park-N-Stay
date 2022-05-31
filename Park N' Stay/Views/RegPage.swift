//
//  RegPage.swift
//  Park N' Stay v1
//
//  Created by Assel ALQasem on 21/06/1443 AH.
//

import SwiftUI

struct RegPage: View {
    @State private var Username = ""
    @State private var Email = ""
    @State private var Password = ""
    @State private var CPassword = ""
    @State var showHomeView: Bool = false
    @State var showRegPageView: Bool = false
    var body: some View {
        if showHomeView{
            Home()
        }
        else {
            if showRegPageView{
                RegPage()
            }
            else{
                ZStack{
                    VStack{
                        
                        VStack{
                         Image("Logo")

                        Text("Create an account")
                            .font(.largeTitle)
                                .foregroundColor(Color.white)
                            Spacer()
                        }.frame(height: 200)
                        
                        PersonalInfo()
                        
                        
                            Text("Confirm Password")
                                .foregroundColor(Color.white)
                                .frame(width:330, alignment: .leading )
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color("Light"))
                                .opacity(0.8)
                                .frame(width : 340, height: 44)
                            SecureField("Enter a password", text: $Password)
                                .frame(width:330)
                        }
                        
                        //                    Text(" ")
                        //                        .foregroundColor(Color.white)
                        //                        .frame(width:330,height: 50, alignment: .leading )
                        //
                        // register button
                        
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("Pink"))
                            .frame(width: 340, height: 44)
                            .overlay( NavigationLink("Register",destination:  Home()))
                            .foregroundColor(Color.white)
                            .padding()
                        
                        // register button done
                        
                        Group{  Rectangle()
                                .fill(Color("Light"))
                                .frame(width: 330, height: 0.6,alignment: .center)
                        }                        // have an account login ?
                        
                        HStack{
                            
                            Text("have an account?")
                                .foregroundColor(Color.white)
                            NavigationLink(("Log in"),destination: login())
                        }                        .foregroundColor(Color("Pink"))
                        
                        
                        
                    }
                    
                    
                    
                }.ignoresSafeArea()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("Navy"))
            }
        }
    }
    
    struct RegPage_Previews: PreviewProvider {
        static var previews: some View {
            RegPage()
        }
    }
}

