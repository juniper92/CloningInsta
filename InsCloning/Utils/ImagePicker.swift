//
//  ImagePicker.swift
//  InsCloning
//
//  Created by HI on 2021/08/04.
//


// UIKit로 만들어진 UiView를 SwiftUI에서 사용하기 : 기존 UIKit Framework 재사용 가능
import SwiftUI


// UIViewControllerRepresentable Protocol 구현하면, UIViewController를 SwiftUI에서 사용할 수 있다.
// 1. 먼저 UIViewControllerRepresentable을 구현하는 struct 생성한다. 그럼 Xcode에서 Required 함수를 구현하지 않았다는 에러가 발생함.
struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var image: UIImage?
    @Environment(\.presentationMode) var mode
    
    // 2. 이 때 makeUIViewController 함수와 updateUIViewController 함수를 구현해주면 에러가 사라진다.
    
    // makeUIViewController 함수 = UIViewController를 생성하고 초기화 수행하는 함수
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    // updateUIViewController 함수 = ViewController의 업데이트가 필요할 때 호출됨, 이 위치에서 ViewController에 필요한 데이터 또는 정보를 갱신해주어야 함. 
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let image = info[.originalImage] as? UIImage else { return }
            self.parent.image = image
            self.parent.mode.wrappedValue.dismiss()
        }
    }
}
