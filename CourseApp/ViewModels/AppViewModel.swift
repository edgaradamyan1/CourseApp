//
//  TextFieldViewModel.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 01.02.25.
//

import SwiftUI

class AppViewModel: ObservableObject {
  @Published var textFields: [TextFieldModel] = [
    .init(placeholder: "Name", image: "person"),
    .init(placeholder: "Email Adress", image: "email"),
    .init(placeholder: "Password", image: "password"),
    .init(placeholder: "Confirm Password", image: "password")
  ]
  
  var buttons: [ButtonModel] = [
    .init(title: "Sign in with Google", image: "google", color: .white, strokeColor: .lightGrayCustom, foreGroundColor: .shadowBlack),
    .init(title: "Sign in with Facebook", image: "facebook", color: .blue, strokeColor: .blue, foreGroundColor: .white),
    .init(title: "Continue with Apple", image: "apple", color: .black, strokeColor: .blue, foreGroundColor: .white)
  ]
  
}
