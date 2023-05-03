////
////  RazorPayIntegrationLearningApp.swift
////  RazorPayIntegrationLearning
////
////  Created by Apple  on 24/04/23.
////
//
import SwiftUI
import Razorpay
import UIKit

@main
struct RazorPayIntegrationLearningApp: App {
    var body: some Scene {
        WindowGroup {
            RazorPayUIkitToSwiftUI()
        }
    }
}
//
//
////class ViewController: UIViewController, RazorpayPaymentCompletionProtocol {
////
////// typealias Razorpay = RazorpayCheckout
////
////    var razorpay: RazorpayCheckout!
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        razorpay = RazorpayCheckout.initWithKey("rzp_test_EJM8kEFVOGZ5no", andDelegate: self)
////    }
////    override func viewWillAppear(_ animated: Bool) {
////    super.viewWillAppear(animated)
////            self.showPaymentForm()
////    }
////
////    internal func showPaymentForm(){
////        let options: [String:Any] = [
////                    "amount": "100", //This is in currency subunits. 100 = 100 paise= INR 1.
////                    "currency": "INR",//We support more that 92 international currencies.
////                    "description": "purchase description",
////                    "order_id": "order_DBJOWzybf0sJbb",
////                    "image": "https://url-to-image.jpg",
////                    "name": "business or product name",
////                    "prefill": [
////                        "contact": "9797979797",
////                        "email": "foo@bar.com"
////                    ],
////                    "theme": [
////                        "color": "#F37254"
////                    ]
////                ]
////        razorpay.open(options)
////    }
////
////    func onPaymentError(_ code: Int32, description str: String) {
////           print("error: ", code, str)
////           self.presentAlert(withTitle: "Alert", message: str)
////       }
////
////       func onPaymentSuccess(_ payment_id: String) {
////           print("success: ", payment_id)
////           self.presentAlert(withTitle: "Success", message: "Payment Succeeded")
////       }
////
////}
////
////
//
//
//class ViewController: UIViewController, RazorpayPaymentCompletionProtocol {
//
//    var razorpay: RazorpayCheckout!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        razorpay = RazorpayCheckout.initWithKey("rzp_test_EJM8kEFVOGZ5no", andDelegate: self)
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        self.showPaymentForm()
//    }
//
//    func showPaymentForm() {
//        let options: [String:Any] = [
//            "amount": "100", //This is in currency subunits. 100 = 100 paise= INR 1.
//            "currency": "INR",//We support more that 92 international currencies.
//            "description": "purchase description",
//            "order_id": "order_DBJOWzybf0sJbb",
//            "image": "https://url-to-image.jpg",
//            "name": "business or product name",
//            "prefill": [
//                "contact": "9797979797",
//                "email": "foo@bar.com"
//            ],
//            "theme": [
//                "color": "#F37254"
//            ]
//        ]
//        razorpay.open(options)
//    }
//
//    func onPaymentError(_ code: Int32, description str: String) {
//        print("error: ", code, str)
//        self.presentAlert(withTitle: "Alert", message: str)
//    }
//
//    func onPaymentSuccess(_ payment_id: String) {
//        print("success: ", payment_id)
//        self.presentAlert(withTitle: "Success", message: "Payment Succeeded")
//    }
//
//    func presentAlert(withTitle title: String, message: String) {
//        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alertController.addAction(okAction)
//        self.present(alertController, animated: true, completion: nil)
//    }
//
//}
//
//
//
//
//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var isPresented = false
//    
//    var body: some View {
//        Button("Show Payment Form") {
//            isPresented.toggle()
//        }
//        .sheet(isPresented: $isPresented, content: {
//            MyViewControllerWrapper()
//        })
//    }
//}
//
//
//struct MyViewControllerWrapper: UIViewControllerRepresentable {
//    
//    func makeUIViewController(context: Context) -> ViewController {
//        return ViewController()
//    }
//
//    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
//        // update the view controller if needed
//    }
//    
//    typealias UIViewControllerType = ViewController
//}
//
//
//
//
//
//class MyViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Add your code here
//        view.backgroundColor = .white
//    }
//}
