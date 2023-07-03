//
//  SwiftUIView1.swift
//  BucketList
//
//  Created by Philipp Sanktjohanser on 01.01.23.
//

import SwiftUI

enum LoadingState {
    case loading, success, failed
}

struct LoadingView: View {
    var body: some View {
        Text("Loading...")
    }
}

struct SuccessView: View {
    var body: some View {
        Text("Success!")
    }
}

struct FailedView: View {
    var body: some View {
        Text("Failed")
    }
}

struct SwiftUIView1: View {
    var loadingState = LoadingState.loading
    
    var body: some View {
        switch loadingState {
        case .loading:
            LoadingView()
        case .success:
            SuccessView()
        case .failed:
            FailedView()
        }
    }
}

struct SwiftUIView1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView1()
    }
}
