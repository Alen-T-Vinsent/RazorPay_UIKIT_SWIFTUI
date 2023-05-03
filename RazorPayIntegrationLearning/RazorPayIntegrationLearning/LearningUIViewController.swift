//
//  LearningUIViewController.swift
//  RazorPayIntegrationLearning
//
//  Created by Apple  on 03/05/23.
//

import SwiftUI

struct LearningUIViewController: View {
    @State var showUIkitView:Bool = false
    var body: some View {
        Image(systemName: "figure.stand")
            .onTapGesture {
                showUIkitView = true
            }
        Text("Home Swift UI View")
            .sheet(isPresented: $showUIkitView) {
                MyView()
            }
    }
}

struct LearningUIViewController_Previews: PreviewProvider {
    static var previews: some View {
        LearningUIViewController()
    }
}


class MyViewController: UIViewController {
    // 1
    private var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.text = "Hello, UIKit!"
        label.textAlignment = .center
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 2
        view.backgroundColor = .systemPink

        // 3
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
        ])
    }
}


struct MyView: UIViewControllerRepresentable {
    typealias UIViewControllerType = MyViewController
    
    func makeUIViewController(context: Context) -> MyViewController {
        let vc = MyViewController()
        // Do some configurations here if needed.
        return vc
    }
    
    func updateUIViewController(_ uiViewController: MyViewController, context: Context) {
        // Updates the state of the specified view controller with new information from SwiftUI.
    }
}
