//
//  NavigateMe.swift
//  miniChallange2
//
//  Created by Ahad Obaid Albaqami on 19/06/1443 AH.
//

import SwiftUI

struct Logout: View {
    
  
    @State var isModal: Bool = false
    var body: some View {


        NavigationView{
        VStack(spacing:110){
            
           
            Spacer()
            Image("Logo")
        
            
            ZStack{
                
       
                VStack{
                    Spacer()
                    Spacer()
                    
                Rectangle()
                    .fill(Color("Navy"))
                    .frame(maxWidth: .infinity, maxHeight: 400)
                    
                    
                }
                VStack{
                    
                    Spacer()
                Text("You are now successfully  \("\n")logged out !")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                    Spacer()
                    Spacer()
                }
                VStack{
                    Spacer()
                    Spacer()
                    

                    
                    Line3()
                              .stroke(style: StrokeStyle(lineWidth: 3, dash: [33]))
                              .foregroundColor(Color("Pink"))
                              .frame(height: 1)
                        .overlay(
                        Image("CarIcon")
                        )
                        Spacer()
                        Spacer()
                        
                        

                    
                   // Spacer()
                }
                
                VStack{
                  //  Spacer()
                  //  Spacer()
                  //  Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                    NavigationLink(destination: login(), label: {
                       
                        Text("Login")
                            .foregroundColor(Color.white)
                            .frame(width:325.0 , height: 44.0)
                            .background(Color("Pink"))
                            .cornerRadius(15)
                    
                    })
                        
                   // Spacer()
                    Spacer()
                   
                   
                }
                
                
            }
            
            
        }
        .ignoresSafeArea()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
          .background(Color("Light"))
            
        } .navigationBarBackButtonHidden(true)
    }
}

struct Line3: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}



struct Logout_Previews: PreviewProvider {
    static var previews: some View {
        Logout()
    }
}
