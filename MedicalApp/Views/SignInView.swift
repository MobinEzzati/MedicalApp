//
//  ContentView.swift
//  LoginTest
//
//  Created by mobin on 10/17/23.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
     
            VStack(spacing:2){
                HStack(){
                    
                    Image("Earth")
                        .resizable()
                        .frame(width: 80, height: 80)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Texas Health")
                            .font(.largeTitle)
                            .foregroundColor(Color(red: 0,
                                                   green:0 ,
                                                   blue: 0.5))
                            .bold()
                        Text("Resource")
                            .font(.title)
                            .foregroundColor(Color(red: 0,
                                                   green:0 ,
                                                   blue: 0.5))
                        
                    }
                
                    
                    
                }.padding(.top)
                
                HStack{
                    Spacer()
                    Text("My")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0, green: 0, blue: 0.5)
    )
                        .bold()
                    Text("Chart")
                        .font(.title)
                        .foregroundColor(.green)
                }.padding(.bottom)
                UserNameAndPasswordView()
              

            }.frame(width: UIScreen.main.bounds.size.width
                            ,height: UIScreen.main.bounds.size.height)
        

        
    
        
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            SignInView()
        }
    }
}

struct UserNameAndPasswordView: View {
    @State private var stringOfTextField: String = String()
    @State private var isOn = false
    @State private var isDetailActive = false


    var body: some View {
        VStack(){
            VStack (){
                HStack(spacing: 150){
                    Text("Username")
                    Text("ForgetUserName?")
                }
                
                TextField("Enter text . . .", text: $stringOfTextField)
                           .padding()
                           .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0)))
                      
            }
            VStack (){
                HStack(spacing: 150){
                    Text("Password")
                    Text("ForgetPassword?")
                }
                
                TextField("Enter text . . .", text: $stringOfTextField)
                           .padding()
                           .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0)))
                    
            }
            HStack{
                Toggle(isOn: $isOn) {
                         Text("Remember UserName")
                     }
                .toggleStyle(iOSCheckboxToggleStyle())
                .padding()
                Spacer()
            }
            VStack{
                Button(action: {
                     print("Login tapped")
                 }) {
                     Text("Log in ")
                         .frame(minWidth: 0, maxWidth: .infinity)
                         .font(.system(size: 18))
                         .padding()
                         .foregroundColor(.white)
                        
                 }
                 .background(Color.gray) // If you have this
                 .cornerRadius(10)
                HStack(spacing: 120) {
                    VStack {
                        Image(systemName: "questionmark.circle")
                        Text("Need Help")
                    }

                    VStack {
                        Image(systemName: "person.badge.plus")
                        Text("Sign Up")
                    }
                    .onTapGesture {
                        isDetailActive = true
                    }
                    .background(
                        NavigationLink("", destination: SignUpView(), isActive: $isDetailActive)
                    )
                }
            }
               
                    
                
                
            }
            VStack(alignment:.trailing){
               InfoCell()
       
                
            }.frame(width: 440)
                
            }
        
        }
 

    


struct InfoCell: View {
    
    
    var body: some View {
        VStack(alignment:.center , spacing: -1){
            HStack{
                Image(systemName: "cross.circle").resizable().frame(width: 40, height: 40)
                Text("Find Physician")
                Spacer()
            }.padding().cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 9)
                        .stroke(.gray, lineWidth: 2)
                )
            HStack{
                Image(systemName: "pin").resizable().frame(width: 40, height: 40)
                Text("Find Location")
                Spacer()

            }.padding().cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 9)
                        .stroke(.gray, lineWidth: 2)
                )
            HStack{
                Image(systemName: "phone.and.waveform.fill").resizable().frame(width: 40, height: 40)
                Text("Contact Us")
                Spacer()

            }.padding().cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 9)
                        .stroke(.gray, lineWidth: 2)
                )
        }

        
    }
}
