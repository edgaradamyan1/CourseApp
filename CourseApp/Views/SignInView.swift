//
//  SignInView.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 02.02.25.
//

import SwiftUI

struct SignInView: View {
  
  @StateObject var viewModel = AppViewModel()
  @State var isTapped = false
  
  var body: some View {
    writeTitle()
    writeSubTitle(text: "Login to Edu Corner")
    textFields
    forgotPassword
    drawContinueButton()
    makeSeparator()
    buttons
    footer
  }
  
  var textFields: some View {
    let filteredTextFields = viewModel.textFields.filter {
      $0.placeholder == "Email Adress" || $0.placeholder == "Password"
    }
    
    return ForEach(filteredTextFields, id: \.placeholder) { textField in
      TextFieldView(data: $viewModel.textFields[viewModel.textFields.firstIndex(where: { $0.placeholder == textField.placeholder})!])
    }
  }
  
  var forgotPassword: some View{
    HStack {
      
      Button {
        print("X")
      } label: {
        Rectangle()
          .stroke(Color.oceanBlue)
          .fill(Color.white)
          .frame(maxWidth: 25, maxHeight: 25)
          .overlay(content: {
            if isTapped == true {
              Text("X")
                .foregroundStyle(Color.oceanBlue)
                .font(.system(size: 20))
        
            }
          })
          .onTapGesture {
            isTapped.toggle()
          }
      }
      
      Text("Remember me")
      Spacer()
      
      Button {
        print("Forgot Password")
      } label: {
        Text("Forgot Password ?")
          .foregroundStyle(.oceanBlue)
      }
    }
    .padding()
  }
  
  var buttons: some View {
    ForEach(viewModel.buttons, id: \.title) { item in
      ButtonView(data: item)
    }
  }
  
  var footer: some View {
    HStack (spacing: 5) {
      Text("Already have an Account ?")
        .foregroundStyle(.steelGray)
        
      
      Button {
        print("Sign Up")
      } label: {
        Text("Sign Up Now")
          .fontWeight(.bold)
          .foregroundStyle(.oceanBlue)
      }

    }
    .padding(.top, 30)
  }
  
}


#Preview {
  SignInView()
}
