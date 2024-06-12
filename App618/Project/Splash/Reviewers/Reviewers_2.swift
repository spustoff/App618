//
//  Reviewers_2.swift
//  App618
//
//  Created by Вячеслав on 6/12/24.
//

import SwiftUI

struct Reviewers_2: View {
    
    
    @AppStorage("status") var status: Bool = false
    
    
    var body: some View {
        ZStack {
            
            Color("primary")
                .ignoresSafeArea()
            
            Image("reviewers_2")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 55) {
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        
                        Text("Stick to the best results")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .semibold))
                            .multilineTextAlignment(.center)
                        
                        Text("Manage your stats")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                            .multilineTextAlignment(.center)
                    })
                    .padding(.top)
                    
                    Button(action: {
                        
                        status = true
                        
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
    Reviewers_2()
}
