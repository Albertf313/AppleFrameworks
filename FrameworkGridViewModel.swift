//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Albert Florido  on 10/10/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    //the stuff you want to broadcast, you put a @published in front of it
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true }
    }
    
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
}
