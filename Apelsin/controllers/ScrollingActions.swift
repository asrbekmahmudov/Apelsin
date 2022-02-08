
import UIKit
var position = CGFloat()
extension MainViewController {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        position = scrollView.contentOffset.y
        barViewChanges()
        balanceSize()
    }
    
    func barViewChanges() {
        if position < 0 {
            mainView.snp.updateConstraints { update in
                update.edges.equalTo(view).inset(UIEdgeInsets(top: UIScreen.height/4 + abs(position), left: 0, bottom: 0, right: 0))
            }
        }
        if position < UIScreen.height/8 && position > 0{
            balanceBarView.snp.updateConstraints { update in
                update.height.equalTo(UIScreen.height/4 - position)
            }
            scrollView.snp.updateConstraints { update in
                update.edges.equalTo(view).inset(UIEdgeInsets(top: UIScreen.height/4 - position, left: 0, bottom: 0, right: 0))
            }
            bonus.snp.updateConstraints { update in
                update.top.equalTo(UIScreen.height/4 - 15 - position)
                if position < 45 {
                    update.right.equalTo(position)
                }
            }
        } else if position <= 0 {
            balanceBarView.snp.updateConstraints { update in
                update.height.equalTo(UIScreen.height/4)
            }
            scrollView.snp.updateConstraints { update in
                update.edges.equalTo(view).inset(UIEdgeInsets(top: UIScreen.height/4, left: 0, bottom: 0, right: 0))
            }
            bonus.snp.updateConstraints { update in
                update.top.equalTo(UIScreen.height/4 - 15)
                update.right.equalTo(0)
            }
        } else {
            balanceBarView.snp.updateConstraints { update in
                update.height.equalTo(UIScreen.height/8)
            }
            scrollView.snp.updateConstraints { update in
                update.edges.equalTo(view).inset(UIEdgeInsets(top: UIScreen.height/8, left: 0, bottom: 0, right: 0))
            }
            bonus.snp.updateConstraints { update in
                update.top.equalTo(UIScreen.height/8 - 15)
                update.right.equalTo(45)
            }
        }
    }
    
    func balanceSize() {
        print(position)
        if position/7 > 0 && position/7 < 12 {
            balance.font = .systemFont(ofSize: UIScreen.height/20 - position/7, weight: .bold)
            balance.snp.updateConstraints { update in
                update.edges.equalTo(self.balanceBarView).inset(UIEdgeInsets(top: UIScreen.height/8 - position/1.5, left: 50 + position/7, bottom: 0, right: 20))
            }
        } else if position/7 <= 0 {
            balance.font = .systemFont(ofSize: UIScreen.height/20, weight: .bold)
            balance.snp.updateConstraints { update in
                update.edges.equalTo(self.balanceBarView).inset(UIEdgeInsets(top: UIScreen.height/8, left: 50, bottom: 0, right: 20))
            }
        } else {
            balance.font = .systemFont(ofSize: UIScreen.height/32, weight: .bold)
            balance.snp.updateConstraints { update in
                update.edges.equalTo(self.balanceBarView).inset(UIEdgeInsets(top: UIScreen.height/24, left: UIScreen.width/6, bottom: 0, right: 20))
            }
        }
        if position > 0 {
            search.layer.opacity = Float(0.3 - abs(position)/120)
            generalBalanceBtn.layer.opacity = Float(1 - abs(position)/50)
            show.layer.opacity = Float(1 - abs(position)/50)
        } else {
            search.layer.opacity = Float(0.3)
            generalBalanceBtn.layer.opacity = Float(1)
            show.layer.opacity = Float(1)
        }
    }
    
}
