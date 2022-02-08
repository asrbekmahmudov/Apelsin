
import UIKit

let subView = UIView()
let containerView = UIView()
let balanceBarView = UIView()
let backgroundImageView = UIImageView()
let mainView = UIView()
let scrollView = UIScrollView()

extension MainViewController {
    func set() {
        UIView.animate(withDuration: 0.5) { [self] in
            setupview()
        }
    }
    
    func setupview() {
        view.addSubview(subView)
        scrollView.alwaysBounceVertical = true
        subView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        subView.addSubview(backgroundImageView)
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalTo(subView)
        }

        backgroundImageView.image = UIImage(named: "main_image")
        backgroundImageView.contentMode = .scaleAspectFill
        
        subView.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.edges.equalTo(view).inset(UIEdgeInsets(top: UIScreen.height/2, left: 0, bottom: 0, right: 0))
        }
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 20
        mainView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        subView.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.edges.equalTo(view).inset(UIEdgeInsets(top: UIScreen.height/4, left: 0, bottom: 0, right: 0))
        }
        
        scrollView.showsVerticalScrollIndicator = false
        scrollView.addSubview(containerView)
        
        
        subView.addSubview(balanceBarView)
        balanceBarView.snp.makeConstraints { make in
            make.left.right.equalTo(containerView)
            make.height.equalTo(UIScreen.height/4)
        }
        
        containerView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
            make.width.equalTo(UIScreen.width)
        }
        
        containerView.layer.cornerRadius = 20
        containerView.backgroundColor = .systemGray6
        mainView.backgroundColor = .systemGray6
        
        cardView()
        mobilePayment()
        setupBalanceView()
        services()
        views()
        self.scrollView.delegate = self
    }
}

extension UIScreen {
    static var width = UIScreen.main.bounds.width
    static var height = UIScreen.main.bounds.height
}
