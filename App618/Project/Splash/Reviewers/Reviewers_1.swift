//
//  Reviewers_1.swift
//  App618
//
//  Created by Вячеслав on 6/12/24.
//

import SwiftUI

struct Reviewers_1: View {
    
    var body: some View {
        
        ZStack {
            
            Color("primary")
                .ignoresSafeArea()
            
            Image("reviewers_1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 55) {
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        
                        Text("All documentation\nfor training")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .semibold))
                            .multilineTextAlignment(.center)
                        
                        Text("Learn how to play and we'll help you with that")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                            .multilineTextAlignment(.center)
                    })
                    .padding(.top)
                    
                    NavigationLink(destination: {
                        
                        Reviewers_2()
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Text("Next")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                            .padding()
                    })
                }
                .padding()
                .background(Color("bg").ignoresSafeArea())
            }
        }
    }
}

#Preview {
    Reviewers_1()
}
