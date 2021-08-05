//
//  LoginView.swift
//  InsCloning
//
//  Created by HI on 2021/08/05.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.gray, Color.green]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack {
                    Image("whatever")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 100)
                        .foregroundColor(.white)
                    
                    VStack(spacing: 20) {
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                        
                        CustomSecureField(text: $password, placeholder: Text("Password"))
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                    }
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {}, label: {
                            Text("Forgot Password")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.trailing, 28)
                        })
                    }
                    
                    Button(action: {}, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            .background(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
                            .clipShape(Capsule())
                            .padding()
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            
                            Text("Sigh Up")
                                .font(.system(size: 14, weight: .semibold))
                        }.foregroundColor(.white)
                    }).padding(.bottom, 32)
                    
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
