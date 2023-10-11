//
//  FramworkGridView.swift
//  AppleFrameworks
//
//  Created by Albert Florido  on 10/9/23.
//

import SwiftUI

struct FramworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    //flexible heres the min/max size it could be, based on how  many columns i have, it will fill the screen
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
        
            }
            .navigationTitle("🍎 Frameworks")
            //instead of .sheet i used .fullscreencover so the browser takes up most of the screen. 
            .fullScreenCover(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                
            }
        }
        
        }
        
    }


#Preview {
    FramworkGridView()
}

