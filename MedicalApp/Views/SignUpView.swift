//
//  SignUpView.swift
//  MedicalApp
//
//  Created by mobin on 11/2/23.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        
        NavigationStack {
            SignUpFields()

        }
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
    
        SignUpView().padding()
    }
}

struct SignUpFields : View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email : String = ""
    @State private var passWord : String = ""
    @State private var showingAlert = false
    @State private var isSecured: Bool = true
    @State private var toggleOn: Bool = true
    @State private var confirmPassword :String = ""
    @StateObject var coreDataViewModel = CoreDataViewModel()
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center){
                ScrollView{
                    
                        HStack(){
                                TextField("FirstName", text: $firstName)
                                                        .padding()
                                                        .overlay(
                                                            RoundedRectangle(cornerRadius: 25)
                                                                .stroke(Color.black, lineWidth: 2)
                                                        )
                    
                        TextField("LastName", text: $lastName)
                                                        .padding()
                                                        .overlay(
                                                            RoundedRectangle(cornerRadius: 25)
                                                                .stroke(Color.black, lineWidth: 2)
                                                        )
                                                }
                                                .padding()
                                                 .frame(width: geo.size.width)
                                                TextField("Email", text: $email)
                                                    .padding()
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 25)
                                                            .stroke(Color.black, lineWidth: 2)
                                                    ).padding()
                    
                                                TextField("Password", text: $passWord)
                                                    .padding()
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 25)
                                                            .stroke(Color.black, lineWidth: 2)
                                                    ).padding()
                    
                                                TextField("Confirm Password", text: $confirmPassword)
                                                    .padding()
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 25)
                                                            .stroke(Color.black, lineWidth: 2)
                                                    ).padding()
                    HStack(){
                        Toggle(isOn: $toggleOn) {
                            Text("Agree with privacy and policy").bold()
                             }
                        .toggleStyle(iOSCheckboxToggleStyle())
                        .padding()
                    }
                    .padding()
                     .frame(width: geo.size.width)
                    Button(action: {

                        coreDataViewModel.addUserInformation(firstName: firstName,
                                                             lastName: lastName,
                                                             email: email,
                                                             password: passWord)

                    }) {
                        Text("SignUp")
                    }                            .buttonStyle(CapsuleButtonStyle())
                    .padding()
                    .alert("Important message", isPresented: $showingAlert) {
                                Button("OK", role: .cancel) { }
                            }
                    
                                                HStack(){
                    
                                                    Text("Already Have Account?")
                                                    NavigationLink {
                                                        SignInView()
                                                       } label: {
                                                           Text("Sign in")
                                                       }
                    
                    
                    
                                                }
                                                .padding()
                                                 .frame(width: geo.size.width)
                    
                    
                }.padding()
                
                
                
            }.frame(width: geo.size.width)
                .navigationTitle("Sign up")


        }
        

        
        
    }
    
}

//    GeometryReader{ geo in
//            NavigationStack {
//                ScrollView{
//                    VStack(alignment: .center, spacing: 2){
//                        Text("dfdfd")

//                            HStack(){
//                                TextField("FirstName", text: $firstName)
//                                    .padding()
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 25)
//                                            .stroke(Color.black, lineWidth: 2)
//                                    )
//
//                                TextField("LastName", text: $lastName)
//                                    .padding()
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 25)
//                                            .stroke(Color.black, lineWidth: 2)
//                                    )
//                            }
//                            .padding()
//                             .frame(width: geo.size.width)
//
//                            TextField("Email", text: $email)
//                                .padding()
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 25)
//                                        .stroke(Color.black, lineWidth: 2)
//                                ).padding()
//
//                            TextField("Password", text: $passWord)
//                                .padding()
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 25)
//                                        .stroke(Color.black, lineWidth: 2)
//                                ).padding()
//
//                            TextField("Confirm Password", text: $confirmPassword)
//                                .padding()
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 25)
//                                        .stroke(Color.black, lineWidth: 2)
//                                ).padding()
//
//
//                            HStack(){
//                                Toggle(isOn: $toggleOn) {
//                                    Text("Agree with privacy and policy").bold()
//                                     }
//                                .toggleStyle(iOSCheckboxToggleStyle())
//                                .padding()
//                            }
//                            .padding()
//                             .frame(width: geo.size.width)
//
//                            Button(action: {
//
//                                coreDataViewModel.addUserInformation(firstName: firstName,
//                                                                     lastName: lastName,
//                                                                     email: email,
//                                                                     password: passWord)
//
//                            }) {
//                                Text("SignUp")
//                            }
//
//                            .buttonStyle(CapsuleButtonStyle())
//                            .padding()
//                            .alert("Important message", isPresented: $showingAlert) {
//                                        Button("OK", role: .cancel) { }
//                                    }
//
//                            HStack(){
//
//                                Text("Already Have Account?")
//                                NavigationLink {
//                                    SignInView()
//                                   } label: {
//                                       Text("Sign in")
//                                   }
//
//
//
//                            }
//                            .padding()
//                             .frame(width: geo.size.width)
                        
//                    }.padding()
//
//
//                }.padding()
//
//            }
//
//
//
//    }
//
//}
