//
//  CategoryButtonsView.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 03.02.25.
//

import SwiftUI

struct categorieButtonView: View {
  var data: ButtonModel
  
  var body: some View {
    Button {
      print("category")
    } label: {
      
      RoundedRectangle(cornerRadius: 5)
        .stroke(data.foreGroundColor)
        .fill(data.color)
        .frame(height: 35)
        .overlay {
          HStack(spacing: 0.1) {
            Image(data.image)
              .resizable()
              .scaledToFit()
              
            Text(data.title)
              .lineLimit(2)
              .font(.system(size: 12))
              .frame(maxWidth: .infinity,alignment: .leading)
              .padding(.trailing)
            
          }
          
        }
        .frame(maxWidth: .infinity)
    
    }

  }
  
  
}
