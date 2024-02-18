//
//  TabView.swift
//  Basterdz-iOS
//
//  Created by 현수빈 on 2/3/24.
//

import SwiftUI

struct TabbarView: View {
    
    var body: some View {
        ZStack {
            TabView {
                BoosterView(viewModel: BoosterViewModel())
                    .tabItem {
                        tabItem(image: .booster, title: "부스터")
                    }
                HomeView(viewModel: HomeViewModel(coordinator: HomeCoordinator()))
                    .tabItem {
                        tabItem(image: .home, title: "홈")
                    }
                MyPageView()
                    .tabItem {
                        tabItem(image: .mypage, title: "마이 페이지")
                    }
                    .font(.headline)
                    .accentColor(BasterdzColor.mainBlack.color)
            }
            VStack {
                Spacer()
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 1)
                    .foregroundColor(Color(.grey1))
                    .padding(.bottom, 50)
            }
        }
    }
    
    @ViewBuilder func tabItem(image: BasterdzImage, title: String) -> some View {
        VStack(spacing: 4) {
            Image(image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(Color(.mainBlack))
                .frame(width: 24, height: 24)
            Text(title)
                .font(.pretendardB(12))
                .foregroundStyle(Color(.mainBlack))
        }
    }
}
