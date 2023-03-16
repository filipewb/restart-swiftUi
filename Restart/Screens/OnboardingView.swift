//
//  OnboardingView.swift
//  Restart
//
//  Created by wolf on 15/03/23.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTY
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
  
  // MARK: - BODY
  
  var body: some View {
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)
      
      VStack(spacing: 20) {
        // MARK: - Heder
        
        Spacer()
        
        VStack(spacing: 0){
          Text("Share.")
            .font(.system(size: 60))
            .fontWeight(.heavy)
            .foregroundColor(.white)
          
          Text("""
          It's not how much we give but
          how much love me put into giving.
          """)
          .font(.title3)
          .fontWeight(.light)
          .foregroundColor(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 10)
        } //: HEADER
        
        // MARK: - Center
        ZStack {
          CircleGroupView(ShapedColor: .white, ShapeOpacity: 0.2)
          
          Image("character-1")
            .resizable()
            .scaledToFit()
        } //: Center
        
        Spacer()
        
        // MARK: - Footer
        
        ZStack {
          
          // 1. Background (Static)
          Capsule()
            .fill(Color.white.opacity(0.2))
          
          Capsule()
            .fill(Color.white.opacity(0.2))
            .padding(8)
          
          // 2. CALL-TO-ACTION (Static)
          Text("Get Started")
            .font(.system(.title3, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .offset(x: 20)
          
          // 3. CAPSULE (DYNAMIC WIDTH)
          HStack {
            Capsule()
              .fill(Color("ColorRed"))
              .frame(width: 80)
            
            Spacer()
          }
          
          // 4. CIRCLE (DRAGGABLE)
          HStack {
            ZStack {
              Circle()
                .fill(Color("ColorRed"))
              Circle()
                .fill(.black.opacity(0.15))
                .padding(8)
              Image(systemName: "chevron.right.2")
                .font(.system(size: 24, weight: .bold))
            }
            .foregroundColor(.white)
            .frame(width: 80, height: 80, alignment: .center)
            .onTapGesture {
              isOnboardingViewActive = false
            }
            
            Spacer()
          } //: HSTACK
        } //: FOOTER
        .frame(height: 80, alignment: .center)
        .padding()
      }//: VStack
    }//: ZStack
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
