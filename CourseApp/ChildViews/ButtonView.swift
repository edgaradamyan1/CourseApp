//
//  ButtonView.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 02.02.25.
//

import SwiftUI

struct ButtonView: View {
  var data: ButtonModel
  
  var body: some View {
    
    Button {
      print("")
    } label: {
      VStack{
          RoundedRectangle(cornerRadius: 8)
            .stroke(data.strokeColor)
            .fill(data.color)
            .frame(maxWidth: .infinity, maxHeight: 55)
            .overlay {
              HStack {
                Image(data.image)
                Text(data.title)
                  .foregroundStyle(data.foreGroundColor)
                
            }
        }
            .padding(.horizontal)
      }
      
    }
    
  }
}

#Preview {
  SignUpView()
}
