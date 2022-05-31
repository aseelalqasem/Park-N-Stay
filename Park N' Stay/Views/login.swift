//
//  ContentView.swift
//  Park N' Stay v1
//
//  Created by Assel ALQasem on 21/06/1443 AH.
//

import SwiftUI

struct login: View {
    
    @State private var Email = ""
    @State private var Password = ""
    @State var showRegPageView: Bool = false
    @State var showHomeView: Bool = false
    @State var showRestPasswordView: Bool = false
    @EnvironmentObject var UserVal: UserViewModel

    var body: some View {
        if showRestPasswordView{
            ResetPassword()
        }
        else if showHomeView{
            Home()
        }
        else if showRegPageView{
            RegPage()
        }
        else{
            VStack{
                Group{     Image("Logo")
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    .frame(width: 350,height: 130, alignment: .leading )}

                Group{  HStack{
                    Text("Email")
                        .foregroundColor(Color.white)
                        .frame(width:330, alignment: .leading )

                    //                        Spacer()
                    //                        .offset(x: -130)
                }
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("Light"))
                            .opacity(0.8)
                            .frame(width : 340, height: 44)

                        TextField("example@apple.com", text: $Email)
                            .frame(width:330)



                    }
                    HStack{
                        Text("Password")
                            .foregroundColor(Color.white)
                            .frame(width:330, alignment: .leading )

                        //                        Spacer()

                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("Light"))
                            .opacity(0.8)
                            .frame(width : 340, height: 44)
                        SecureField("Enter a password", text: $Password)
                            .frame(width:330)
                    }}


                Button("Forget your password ?"){
                    self.showRestPasswordView = true
                }
                .foregroundColor(Color.gray)
                ZStack{

                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color("Pink"))
                        .frame(width: 340, height: 44)
                    Button("Login"){
                       
                         self.showHomeView = true
                        UserVal.UserLogin() 
                            
                    }
                    .foregroundColor(Color.white)
                    .padding()
                   
                }
                ZStack{  RoundedRectangle(cornerRadius: 15)
                        .fill(Color.black)
                        .frame(width: 340, height: 44)
                    HStack{
                        Image(systemName: "applelogo")
                            .foregroundColor(Color.white)
                        Text("Continue With Apple")
                            .foregroundColor(Color.white)
                            .padding()


                    }

                }

                Group{

                                        Rectangle()
                                            .fill(Color("Light"))
                                            .frame(width: 330, height: 0.6,alignment: .center)
                }

                HStack{
                    Text("Do not have an account?")
                        .foregroundColor(Color.white)

                    Button("Register"){
                        self.showRegPageView = true

                    }
                    .foregroundColor(Color("Pink"))

                }



   }
//               .ignoresSafeArea()
 .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("Navy"))
                .navigationBarBackButtonHidden(true)

        }
    }
}

    
    struct login_Previews: PreviewProvider {
        static var previews: some View {
            login()
        }
    }

