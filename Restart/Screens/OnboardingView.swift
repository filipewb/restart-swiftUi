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
    VStack(spacing: 20) {
      Text("Onboarding")
        .font(.largeTitle)
      
      Button(action: {
        isOnboardingViewActive = false
      }) {
        Text("Start")
      }
    } //: VStack
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
