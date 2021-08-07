//
//  RegistrationView.swift
//  InsCloning
//
//  Created by HI on 2021/08/05.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var username = ""
    @State private var password = ""
    @State private var selectedImage: UIImage?
    @State private var image: Image?
    @State var imagePickerPresented = false
    
    /* SwiftUI는 기본적으로 이 환경 변수를 사용할 수 있으며 프레젠테이션 모드, 특히 이 모든 항목에서 내비게이션 스택에 무언가가 푸시되었는지 여부를 판단할 수 있다.
     여기서 '모드' 변수를 사용해 이 화면을 해제할 수 있다.
     그렇다면 wrappedValue 이건 정확히 어떤 역할을 하는걸까?
     
     SwiftUI basically has the ability to use this environment variables and use this presentationMode and particular to determine if something has been presented if something has been pushed on to a navigation stack in all that stuffs.
     So we can use this 'mode' variable here to dismiss this screen.
     wrappedValue, let's go check out what this guy is exactly. */
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        ZStack {
            // TODO : F7F7F7 로 배경색 변경하기
            LinearGradient(gradient: Gradient(colors: [Color.gray, Color.green]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                ZStack {
                    if let image = image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                            .clipShape(Circle())
                    } else {
                        Button(action: { imagePickerPresented.toggle() }, label: {
                            Image("profile")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .foregroundColor(.white)
                        })
                        .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
                            ImagePicker(image: $selectedImage)
                        })
                    }
                }
                
                VStack(spacing: 20) {
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                    CustomTextField(text: $email, placeholder: Text("Username"), imageName: "person.fill")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                    CustomTextField(text: $email, placeholder: Text("Full Name"), imageName: "person")
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
                
                Button(action: {}, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
                        .clipShape(Capsule())
                        .padding()
                })
                
                Spacer()
                
                Button(action: { mode.wrappedValue.dismiss() }, label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sigh In")
                            .font(.system(size: 14, weight: .semibold))
                    }.foregroundColor(.white)
                })
            }.padding()
            
        }
    }
}


extension RegistrationView {
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        image = Image(uiImage: selectedImage)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
