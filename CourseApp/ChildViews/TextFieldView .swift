//
//  TextFieldView 2.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 01.02.25.
//

import SwiftUI

struct TextFieldView: View {
  @Binding var data: TextFieldModel
  
  var body: some View {
    
      HStack {
        TextField(data.placeholder, text: $data.text)
          .padding(.horizontal)
        
        Image(data.image)
          .frame(maxWidth: 30, maxHeight: 75)
          .scaledToFill()
          .padding()
        
      }
      .frame(maxWidth: .infinity, maxHeight: 55)
      .overlay {
        RoundedRectangle(cornerRadius: 5)
          .stroke(Color.lightGrayCustom)
        
      }
      .background(Color.softAzure)
      .padding(.horizontal)
      .padding(.bottom, 10)
      
    
  }
}

