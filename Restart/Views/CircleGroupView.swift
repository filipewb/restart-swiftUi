//
//  CircleGroupView.swift
//  Restart
//
//  Created by wolf on 16/03/23.
//

import SwiftUI

struct CircleGroupView: View {
  // MARK: - PROPERTY
  
  @State var ShapedColor: Color
  @State var ShapeOpacity: Double
  
  // MARK: - BODY
  
  var body: some View {
    ZStack {
      Circle()
        .stroke(ShapedColor.opacity(ShapeOpacity), lineWidth: 40)
        .frame(width: 260, height: 260, alignment: .center)
      Circle()
        .stroke(ShapedColor.opacity(ShapeOpacity), lineWidth: 80)
        .frame(width: 260, height: 260, alignment: .center)
    } //: ZSTACK
  }
}

// MARK: - PREVIEW

struct CircleGroupView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)
      
      CircleGroupView(ShapedColor: .white, ShapeOpacity: 0.2)
    }
  }
}
