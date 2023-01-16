//
//  MyTableViewCell.swift
//  ApplicationOne
//
//  Created by Ruslan Baigeldiyev on 13.01.2023.
//


import UIKit
import SnapKit

class TeslaCarTableViewCell: UITableViewCell {
    let headerLabel = UILabel()
    let teslaCarImageView = UIImageView()
    let nameLabel = UILabel()
    let descriptionLabel = UILabel()
    let priceLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        contentView.addSubview(headerLabel)
        headerLabel.snp.makeConstraints { make in
            //make.top.equalTo(safeAreaLayoutGuide.snp.top).inset(50)
        }
        
        
        contentView.addSubview(teslaCarImageView)
        teslaCarImageView.snp.makeConstraints { make in
            //make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(90)
            make.left.equalToSuperview()
            //make.top.equalToSuperview().offset(20)
            make.width.equalTo(80)
            make.height.equalTo(50)
        }
        
        contentView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            //make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(90)
            make.left.equalTo(teslaCarImageView.snp.right).offset(15)
            make.top.equalToSuperview()
            make.right.equalToSuperview().offset(-30)
        }
        
        contentView.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { make in
            //make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(90)
            make.left.equalTo(teslaCarImageView.snp.right).offset(140)
            //make.top.equalTo(nameLabel.snp.bottom).offset(30)
            make.right.equalToSuperview().offset(10)
        }
        
        contentView.addSubview(priceLabel)
        priceLabel.snp.makeConstraints { make in
            //make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(90)
            make.left.equalTo(teslaCarImageView.snp.right).offset(15)
            make.bottom.equalToSuperview()
            make.right.equalToSuperview().offset(10)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
