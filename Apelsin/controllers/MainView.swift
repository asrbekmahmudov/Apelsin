
import UIKit

let card = UIView()
let mobile = UIView()
let View = UIView()
let addCard = UIView()
var isCardView = false
var add = UIButton()
let horizontalView = UIView()
let mediumConfig = UIImage.SymbolConfiguration(pointSize: 0, weight: .medium, scale: .medium)

extension MainViewController {
    func cardView() {
        containerView.addSubview(card)
        
        card.snp.makeConstraints { make in
            make.left.right.equalTo(containerView).inset(0)
            make.width.height.equalTo(120)
            make.top.equalTo(containerView).offset(0)
        }
        
        card.backgroundColor = .white
        card.layer.cornerRadius = 20
        card.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        let Card = UIButton()
        card.addSubview(Card)
        
        Card.snp.makeConstraints { make in
            make.left.right.equalTo(card).inset(0)
            make.top.equalTo(card).offset(-90)
        }
        
        Card.setImage(UIImage(named: "master_card"), for: .normal)
        Card.imageView?.contentMode = .scaleAspectFit
        Card.addTarget(self, action: #selector(cardTapped), for: .touchUpInside)
        
        card.addSubview(addCard)
        
        addCard.snp.makeConstraints { make in
            make.left.right.equalTo(card).inset(0)
            make.width.height.equalTo(50)
            make.top.equalTo(card).offset(70)
        }
        
        addCard.backgroundColor = .white
        
        card.addSubview(add)
        
        add.snp.makeConstraints { make in
            make.size.equalTo(50)
            make.top.equalTo(35).offset(45)
            make.left.equalTo(UIScreen.width/2 - 25)
            //make.center.equalTo(card)
        }
        
        add.backgroundColor = .white
        add.layer.cornerRadius = 25
        add.setImage(UIImage(systemName: "plus", withConfiguration: mediumConfig)?.withTintColor(.orange, renderingMode: .alwaysOriginal), for: .normal)
        add.layer.shadowRadius = 5
        add.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        add.layer.shadowOpacity = 0.1
        card.addSubview(View)
        
        View.snp.makeConstraints { make in
            make.left.right.equalTo(card).inset(0)
            make.width.height.equalTo(containerView)
            make.top.equalTo(containerView).offset(120)
        }
        
        View.backgroundColor = .systemGray6
    }
    
    func mobilePayment() {
        containerView.addSubview(mobile)
        
        mobile.snp.makeConstraints { make in
            make.left.right.equalTo(containerView).inset(15)
            make.top.equalTo(card.snp_bottom).offset(10)
            make.width.height.equalTo(100)
        }
        
        mobile.backgroundColor = .white
        mobile.layer.cornerRadius = 10
        
        let label = UILabel()
        mobile.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.left.right.equalTo(mobile).inset(15)
            make.top.equalTo(mobile).offset(10)
        }
        
        label.text = "Mobil aloqa to'lovi"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 14)
        
        let mobileView = UIView()
        mobile.addSubview(mobileView)
        
        mobileView.snp.makeConstraints { make in
            make.left.right.equalTo(mobile).inset(15)
            make.top.equalTo(label.snp_bottom).offset(10)
            make.width.height.equalTo(50)
            //make.bottom.equalTo(mobile).offset(-25)
        }
        
        let countryMobileCode = UILabel()
        mobileView.addSubview(countryMobileCode)
        
        countryMobileCode.snp.makeConstraints { make in
            make.top.equalTo(mobileView).offset(10)
        }
        
        countryMobileCode.text = "+998"
        countryMobileCode.font = .systemFont(ofSize: 20, weight: .medium)
        
        let phoneNumber = UITextField()
        mobileView.addSubview(phoneNumber)
        
        phoneNumber.snp.makeConstraints { make in
            make.top.equalTo(mobileView).offset(10)
            make.left.equalTo(70)
        }
        
        phoneNumber.placeholder = "Telefon"
        phoneNumber.font = .systemFont(ofSize: 20, weight: .medium)
        phoneNumber.keyboardType = .phonePad
        
        
        let contacts = UIButton()
        mobileView.addSubview(contacts)
        
        contacts.snp.makeConstraints { make in
            make.size.equalTo(25)
            make.top.equalTo(mobileView).offset(10)
            make.right.equalTo(0)
        }
        contacts.setImage(UIImage(systemName: "person", withConfiguration: mediumConfig)?.withTintColor(.orange, renderingMode: .alwaysOriginal), for: .normal)
    }
    
    func services() {
        let text = UILabel()
        containerView.addSubview(text)
        text.snp.makeConstraints { make in
            make.left.right.equalTo(containerView).inset(15)
            make.top.equalTo(mobile.snp_bottom).offset(20)
        }
        
        text.text = "Servislar"
        text.font = .systemFont(ofSize: 14)
        text.textColor = .systemGray
        
        containerView.addSubview(horizontalView)
        horizontalView.snp.makeConstraints { make in
            make.left.right.equalTo(containerView).inset(0)
            make.top.equalTo(mobile.snp_bottom).offset(45)
            make.width.height.equalTo(100)
            //make.bottom.equalTo(containerView).offset(-15)
        }
        
        let horizontalScrollView = UIScrollView()
        horizontalView.addSubview(horizontalScrollView)
        
        horizontalScrollView.snp.makeConstraints { make in
            make.left.right.equalTo(containerView).inset(0)
            make.top.equalTo(mobile.snp_bottom).offset(45)
            make.width.height.equalTo(100)
            //make.bottom.equalTo(containerView).offset(-15)
        }
        
        horizontalScrollView.alwaysBounceHorizontal = true
        horizontalScrollView.showsHorizontalScrollIndicator = false
        
        let servicesView = UIView()
        horizontalScrollView.addSubview(servicesView)
        
        servicesView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        for i in 0..<10 {
            let service = UIView()
            servicesView.addSubview(service)
            service.backgroundColor = .white
            service.layer.cornerRadius = 10
            
            let image = UIImageView()
            service.addSubview(image)
            
            image.snp.makeConstraints { make in
                make.top.equalTo(20)
                make.left.equalTo(20)
                make.right.equalTo(-20)
                make.size.equalTo(30)
            }
            
            image.contentMode = .scaleAspectFit
            image.image = UIImage(systemName: "cart")?.withTintColor(.orange, renderingMode: .alwaysOriginal)
            
            let label = UILabel()
            service.addSubview(label)
            
            label.snp.makeConstraints { make in
                make.bottom.equalTo(-20)
                make.left.right.equalTo(35)
                make.size.equalTo(20)
            }
            
            label.text = "Shop"
            label.font = .systemFont(ofSize: 12, weight: .medium)
            
            if i == 0 {
                service.snp.makeConstraints { make in
                    make.top.bottom.equalTo(servicesView).inset(0)
                    make.size.equalTo(100)
                    make.left.equalTo(servicesView).offset(15)
                }
            } else if i != 9 {
                service.snp.makeConstraints { make in
                    make.top.bottom.equalTo(servicesView).inset(0)
                    make.left.equalTo(servicesView.subviews[i-1].snp_left).offset(110)
                    make.size.equalTo(100)
                }
            } else {
                service.snp.makeConstraints { make in
                    make.top.bottom.equalTo(servicesView).inset(0)
                    make.left.equalTo(servicesView.subviews[i-1].snp_left).offset(110)
                    make.size.equalTo(100)
                    make.right.equalTo(servicesView).offset(-15)
                }
            }
            
        }
    }
    
    func views() {
        let mobile1 = UIView()
        containerView.addSubview(mobile1)
    
        mobile1.snp.makeConstraints { make in
        make.left.right.equalTo(containerView).inset(15)
        make.top.equalTo(horizontalView.snp_bottom).offset(10)
        make.width.height.equalTo(50)
        //make.bottom.equalTo(containerView).offset(-15)
        }
         
        mobile1.backgroundColor = .white
        mobile1.layer.cornerRadius = 15
        
        let mobile2 = UIView()
        containerView.addSubview(mobile2)
        
        mobile2.snp.makeConstraints { make in
        make.left.right.equalTo(containerView).inset(15)
        make.top.equalTo(mobile1.snp_bottom).offset(10)
        make.width.height.equalTo(150)
        }
        
        mobile2.backgroundColor = .white
        mobile2.layer.cornerRadius = 15
        
        let mobile3 = UIView()
        containerView.addSubview(mobile3)
        
        mobile3.snp.makeConstraints { make in
        make.left.right.equalTo(containerView).inset(15)
        make.top.equalTo(mobile2.snp_bottom).offset(10)
        make.width.height.equalTo(400)
        make.bottom.equalTo(containerView).offset(0)
        }
        
        mobile3.backgroundColor = .white
        mobile3.layer.cornerRadius = 15
    }
    
    @objc func cardTapped() {
        isCardView.toggle()
        UIView.animate(withDuration: 0.5) { [self] in
            card.snp.updateConstraints { update in
                update.width.height.equalTo(isCardView ? 250 : 120)
                update.top.equalTo(containerView).offset(0)
            }
            addCard.snp.updateConstraints { update in
                update.width.height.equalTo(isCardView ? 0 : 50)
                update.top.equalTo(card).offset(isCardView ? 1000 : 70)
            }
            View.snp.updateConstraints { update in
                update.left.right.equalTo(card).inset(0)
                update.width.height.equalTo(containerView)
                update.top.equalTo(containerView).offset(isCardView ? 250 : 120)
            }
            add.snp.updateConstraints { update in
                update.size.equalTo(50)
                update.top.equalTo(35).offset(isCardView ? UIScreen.height : 45)
                update.left.equalTo(UIScreen.width/2 - 25)
                //make.center.equalTo(card)
            }
            containerView.superview!.layoutIfNeeded()
        }
        
    }
}
