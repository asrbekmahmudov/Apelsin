import UIKit

let balance = UILabel()
let bonus = UIView()
let search = UITextField()
let generalBalanceBtn = UIButton()
var isShow = true
extension MainViewController {
    func setupBalanceView() {
        generalBalance()
        balanceView()
        shows()
        navigationItems()
        bonusView()
        profileView()
        searchView()
    }
    
    func profileView() {
        let profile = UIButton()
        balanceBarView.addSubview(profile)
        
        profile.snp.makeConstraints { make in
            make.width.height.equalTo(UIScreen.width/10)
            make.top.equalTo(UIScreen.height/16 - 5)
            make.left.equalTo(15)
            make.leading.equalTo(balanceBarView)
        }
        
        profile.setImage(UIImage(systemName: "brain.head.profile")?.withTintColor(.orange, renderingMode: .alwaysOriginal), for: .normal)
        profile.layer.cornerRadius = 10
        profile.backgroundColor = .white
    }
    
    func searchView() {
        balanceBarView.addSubview(search)
        
        search.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.width/2 - 10)
            make.height.equalTo(UIScreen.width/10)
            make.top.equalTo(UIScreen.height/16 - 5)
            make.left.equalTo(UIScreen.width/6)
        }
        
        search.placeholder = "Qidirish"
        search.backgroundColor = .white
        search.layer.opacity = 0.3
        search.layer.cornerRadius = 10
        search.textAlignment = .center
    }
    
    func generalBalance() {
        balanceBarView.addSubview(generalBalanceBtn)
        
        generalBalanceBtn.snp.makeConstraints { make in
            make.width.height.equalTo(UIScreen.width/16)
            make.top.equalTo(UIScreen.height/6 + 5)
            make.left.equalTo(15)
            make.leading.equalTo(balanceBarView)
        }
        
        generalBalanceBtn.setImage(UIImage(systemName: "chevron.up.chevron.down")!.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        generalBalanceBtn.contentVerticalAlignment = .fill
        generalBalanceBtn.contentHorizontalAlignment = .fill
    
    }
    
    func balanceView() {
        balanceBarView.addSubview(balance)
        balance.snp.makeConstraints { make in
            make.edges.equalTo(self.balanceBarView).inset(UIEdgeInsets(top: UIScreen.height/8, left: 50, bottom: 0, right: 20))
            make.center.equalTo(balance)
        }
        
        balance.textColor = .white
        balance.text = isShow ? "999 890 UZS" : "•••••••"
        balance.font = .systemFont(ofSize: UIScreen.height/20, weight: .bold)
    }
    
    func shows() {
        balanceBarView.addSubview(show)
        
        show.snp.makeConstraints { make in
            make.top.equalTo(UIScreen.height/6 + 5)
            make.right.equalTo(-15)
        }
        
        show.setImage(UIImage(systemName: isShow ? "eye" : "eye.slash")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        
        show.addTarget(self, action: #selector(showBalance), for: .touchUpInside)
    }

    func navigationItems() {
        let bell = UIButton()
        balanceBarView.addSubview(bell)

        bell.snp.makeConstraints { make in
            make.width.height.equalTo(UIScreen.width/12)
            make.top.equalTo(UIScreen.height/16 - 5)
            make.right.equalTo(-15)
            make.trailing.equalTo(balanceBarView)
        }

        bell.setImage(UIImage(named: "bell")?.withTintColor(.white), for: .normal)
        
        let schedule = UIButton()
        balanceBarView.addSubview(schedule)

        schedule.snp.makeConstraints { make in
            make.width.height.equalTo(UIScreen.width/12)
            make.top.equalTo(UIScreen.height/16 - 5)
            make.right.equalTo(bell).offset(-UIScreen.width/10)
            make.trailing.equalTo(balanceBarView)
        }

        schedule.setImage(UIImage(named: "schedule")?.withTintColor(.white), for: .normal)
        
        let shop = UIButton()
        balanceBarView.addSubview(shop)

        shop.snp.makeConstraints { make in
            make.width.height.equalTo(UIScreen.width/12)
            make.top.equalTo(UIScreen.height/16 - 5)
            make.right.equalTo(schedule).offset(-UIScreen.width/10)
            make.trailing.equalTo(balanceBarView)
        }
        
        shop.setImage(UIImage(named: "shop")?.withTintColor(.white), for: .normal)
    }
    
    func bonusView() {
        balanceBarView.addSubview(bonus)
        
        bonus.snp.makeConstraints { make in
            make.width.equalTo(90)
            make.height.equalTo(30)
            make.top.equalTo(UIScreen.height/4 - 15)
            make.right.equalTo(0)
            make.trailing.equalTo(balanceBarView)
        }
        
        bonus.backgroundColor = .systemGreen
        bonus.layer.cornerRadius = 15
        bonus.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        let orange = UIImageView()
        bonus.addSubview(orange)
        
        orange.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.top.equalTo(2.5)
            make.left.equalTo(2.5)
            
        }
        
        orange.image = UIImage(named: "orange")
    }
    
    @objc func showBalance() {
        isShow.toggle()
        show.setImage(UIImage(systemName: isShow ? "eye" : "eye.slash")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        balance.text = isShow ? "999 890 UZS" : "•••••••"
    }
}

