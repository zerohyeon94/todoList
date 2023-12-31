//
//  ViewController.swift
//  Todo_myDreams
//
//  Created by t2023-m0059 on 2023/08/01.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var appTitle: UILabel!
    
    @IBOutlet weak var mainStackView: UIStackView!

    @IBOutlet weak var appName: UILabel!
    
    @IBOutlet weak var gotoListView: UIButton!
    @IBOutlet weak var gotoCompletedView: UIButton!
    @IBOutlet weak var gotoURLView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 데이터가 없는 경우 임의로 넣어줌
        if DataManager.shared.load().isEmpty {
            let data1: DataTodo = DataTodo(type: "Exercise", goal: "스쿼트 200kg", date: "2023-12-20", iscompleted: false, memo: "현재 350lb")
            let data2: DataTodo = DataTodo(type: "Exercise", goal: "데드리프트 250kg", date: "2023-12-25", iscompleted: false, memo: "현재 420lb")
            let data3: DataTodo = DataTodo(type: "Exercise", goal: "벤치프레스 150kg", date: "2023-12-30", iscompleted: false, memo: "현재 100kg")
            let data4: DataTodo = DataTodo(type: "Study", goal: "Swift 폭풍 공부", date: "2023-12-30", iscompleted: false, memo: "아직 기초단계 ㅜ")
            let data5: DataTodo = DataTodo(type: "Study", goal: "영어 Master", date: "2023-12-30", iscompleted: false, memo: "스페인을 가기 위한 기반!")
            let data6: DataTodo = DataTodo(type: "Cooking", goal: "파스타 Master", date: "2023-12-30", iscompleted: false, memo: "면을 삷고 파스타 소스를 붓기만 잘함.")
            
            DataManager.shared.save(todo: [data1, data2, data3, data4, data5, data6])
        }
        
        setLabel()
        setButton()
    }
    
    func setLabel() {
        appTitle.text = "Zero's DataTodo List"
        appTitle.font = UIFont.boldSystemFont(ofSize: 30)
        appTitle.sizeToFit()
        appTitle.textAlignment = .center
        
        appName.text = "Zero"
        appName.sizeToFit()
        appName.textAlignment = .center
    }
    
    func setButton() {
        // DataTodo List 이동
        gotoListView.setTitle("DataTodo List", for: .normal)
        gotoListView.setTitleColor(.black, for: .normal)
        
        gotoListView.tintColor = UIColor.green
        
        gotoListView.layer.cornerRadius = 10
        gotoListView.layer.borderWidth = 2
        gotoListView.layer.borderColor = UIColor.black.cgColor
        
        // Stack View spacing setting
        mainStackView.setCustomSpacing(30, after: gotoListView)
        
        // Completed DataTodo List 이동
        gotoCompletedView.setTitle("Completed DataTodo List", for: .normal)
        gotoCompletedView.setTitleColor(.black, for: .normal)
        
        gotoCompletedView.tintColor = UIColor.green
        
        gotoCompletedView.layer.cornerRadius = 10
        gotoCompletedView.layer.borderWidth = 2
        gotoCompletedView.layer.borderColor = UIColor.black.cgColor
        
        // Stack View spacing setting
        mainStackView.setCustomSpacing(30, after: gotoCompletedView)
        
        // URL Session 이동
        gotoURLView.setTitle("URL", for: .normal)
        gotoURLView.setTitleColor(.black, for: .normal)
        
        gotoURLView.tintColor = UIColor.green
        
        gotoURLView.layer.cornerRadius = 10
        gotoURLView.layer.borderWidth = 2
        gotoURLView.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func moveURL(_ sender: Any) {
//        let urlViewController = HomeViewController(homeView: HomeView())
        let urlViewController = HomeViewController()

        self.navigationController?.pushViewController(urlViewController, animated: true)
        
//        let urlViewController = HomeViewController()
//        self.present(urlViewController, animated: true, completion: nil)
    }
    
}

