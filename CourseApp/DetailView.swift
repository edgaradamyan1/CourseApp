//
//  DetailView.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 05.02.25.
//

import SwiftUI

struct DetailView: View {
 
  @StateObject var viewModel = AppViewModel()
  
  var body: some View {
    CourseDetailView(course: viewModel.newCourses.first!)
  }
}


struct CourseDetailView: View {
  var course: NewCourseModel
  @StateObject var viewModel = AppViewModel()
  
  let columns = [GridItem(.flexible()), GridItem(.flexible())]
  
  var body: some View {
    ScrollView {
      VStack (alignment: .leading){
        courseImage
        titleAndPrice
        rating
        teacher
        buttons
        seperator
        label
        writeSectionTitle(title: "What will I Learn ?")
        courseDescription
        readMoreButton
        writeSectionTitle(title: "Skills You Will Gain")
      }
    }

  }
  var courseImage: some View {
    Image(course.image)
      .resizable()
      .frame(maxWidth: .infinity)
      .frame(height: 250)
    
  }
  
  var titleAndPrice: some View {
    HStack {
      Text(course.title)
        .font(.system(size: 20))
        .fontWeight(.bold)
      Spacer()
      Text(course.price)
        .font(.system(size: 20))
        .fontWeight(.bold)
    }
    .padding()
  }
  
  var rating: some View {
    HStack {
      Image("star")
      Text(course.rating)
        .fontWeight(.bold)
      Text("(1.8k Learners)")
    }.padding(.horizontal)
  }

  var teacher: some View {
    HStack {
      Image(course.teacher.image)
      Text(course.teacher.name)
        .fontWeight(.bold)
    }
    .padding(.horizontal)
    
  }
  
  var buttons: some View {
    
    let buttonsTitle: [String] = [ "Curriculum", "Projects", "Comments"]
    return HStack {
      ForEach(buttonsTitle, id:\.self) { button in
        
        HStack {
          
          Button {
            print("hi")
          } label: {
            HStack {
              Text(button)
                .foregroundStyle(.black)
               
            }
            
          }

        }
        .padding(.horizontal, 25)
        .padding(.top, 5)
      }
    }
  }
  
  var seperator: some View {
    Rectangle()
      .background(Color.lightGrayCustom)
      .frame(height: 0.2)
      .padding(.top,1)
  }
  
  var label: some View {
    
    VStack {
      LazyVGrid(columns: columns, spacing: 18) {
        ForEach(viewModel.labels, id: \.text) { label in
          LabelView(label: label)
        }
      }
      .padding()
      .background(Color.blueGray)
      .cornerRadius(15)
      
      
    }
    .padding()
  }
  
  var courseDescription: some View {
    Text(viewModel.sampleText)
      .font(.system(size: 17))
      .padding(.horizontal)
  }
}

var readMoreButton: some View {
  Button {
    print("read More")
  } label: {
    HStack {
      Text("Read More")
        .fontWeight(.bold)
        .foregroundStyle(Color.oceanBlue)
      Image(systemName: "chevron.down")
    }
    .padding(.horizontal)
    .padding(.bottom)
  }

}



#Preview(body: {
  
  let viewModel = AppViewModel()
  
  let sample = viewModel.newCourses.first!
  
  CourseDetailView(course: sample)
})
