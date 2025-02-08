//
//  LabelView 2.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 05.02.25.
//

import SwiftUI

struct LabelView: View {
  var label: LabelModel
  
  var body: some View {
    VStack() {
      HStack {
        Image(label.image)
          .resizable()
          .scaledToFit()
          .frame(width: 25, height: 25)
        Text(label.text)
          .font(.system(size: 12))
          .lineLimit(1)
        Spacer()
      }
    }
    
    
  }
}
