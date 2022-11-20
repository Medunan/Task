

import UIKit

class AccountCell: UITableViewCell {
    
    let image = UIImageView()
    var userImageView: UIImageView = {
            let imageView = UIImageView()
            let imageViewHeightAndWidth: CGFloat = 55
            let image = UIImage(named: "Dummy")
            imageView.image = image
            imageView.clipsToBounds = true
            imageView.layer.cornerRadius = 10
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
    let typeLabel = UILabel()
    let nameLabel = UILabel()
    var price = UILabel()
    
    
    let chevronImageView = UIImageView()
    
    static let reuseID = "AccountCell"
    static let rowHeight : CGFloat = 200
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AccountCell {

    private func setup(){
        
        userImageView.translatesAutoresizingMaskIntoConstraints = false

        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.preferredFont(forTextStyle: .body)
        nameLabel.adjustsFontForContentSizeCategory = true
        nameLabel.text = "Shirt"
        
        
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        typeLabel.font = UIFont.preferredFont(forTextStyle: .body)
        typeLabel.text = "Mens Colthing"
        
        
        price.translatesAutoresizingMaskIntoConstraints = false
        price.font = UIFont.preferredFont(forTextStyle: .body)
        price.text = "$200"
        
        chevronImageView.translatesAutoresizingMaskIntoConstraints = false
        let chevronImage = UIImage(systemName: "chevron.right")!.withTintColor(appColor, renderingMode: .alwaysOriginal)
        chevronImageView.image = chevronImage
        
        contentView.addSubview(userImageView)
        contentView.addSubview(typeLabel)
        contentView.addSubview(nameLabel)
        contentView.addSubview(price)
        
        
      
        
        contentView.addSubview(chevronImageView)
    }
    
    func set(menu: Menu) {
        userImageView.image = menu.imageName
        typeLabel.text = menu.title
        nameLabel.text = menu.ProductType
        price.text = String(menu.cost)
    }
    
    private func layout() {
        NSLayoutConstraint.activate([
            userImageView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 2),
            userImageView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 8),
            userImageView.heightAnchor.constraint(equalToConstant: 350),
            userImageView.widthAnchor.constraint(equalToConstant: 250),
            
            
            nameLabel.topAnchor.constraint(equalToSystemSpacingBelow: userImageView.bottomAnchor, multiplier: 1),
            nameLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 8),
            
            typeLabel.topAnchor.constraint(equalToSystemSpacingBelow: nameLabel.bottomAnchor, multiplier: 1),
            typeLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 8),
            
            price.topAnchor.constraint(equalToSystemSpacingBelow: typeLabel.bottomAnchor, multiplier: 1),
            price.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 8),
            
            chevronImageView.topAnchor.constraint(equalToSystemSpacingBelow: userImageView.bottomAnchor, multiplier: 4.5),
            trailingAnchor.constraint(equalToSystemSpacingAfter: chevronImageView.trailingAnchor, multiplier: 10),
            
          
            
            
        ])
    }
}
    
    


import SwiftUI

struct AccountSummaryCellRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        AccountCell(style: .default, reuseIdentifier: "AccountSummaryCell")
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
            
    }
    
}

struct ProductTableViewCell_Previews: PreviewProvider {
    static var previews: some View {
        AccountSummaryCellRepresentable()
    }
}

