//
//  Extensions.swift
//  InsCloning
//
//  Created by HI on 2021/08/03.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
