//
//  ContentView.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 01.02.25.
//

import SwiftUI

struct SignUpView: View {
  
  @StateObject var viewModel = AppViewModel()
  
  
    var body: some View {
      writeTitle()
      writeSubTitle(text: "Sign Up to Edu Corner")
      textfield
      drawContinueButton()
      makeSeparator()
      buttons
      footer
    }
  
  
  
  var textfield: some View {
    ForEach($viewModel.textFields, id: \.placeholder) { itemData in
      TextFieldView(data: itemData)
        
    }
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
        print("Login")
      } label: {
        Text("Login Now")
          .fontWeight(.bold)
          .foregroundStyle(.oceanBlue)
      }

    }
    .padding()
  }
}


#Preview {
    SignUpView()
}



