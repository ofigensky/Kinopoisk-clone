//
//  MovieTableViewCell.swift
//  Kinopoisk clone
//
//  Created by Gleb Glushok on 10.06.2022.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    static let identifier = "MovieTableViewCell"
    
    private let playMovieButton: UIButton = {
        
        let button = UIButton()
        let image = UIImage(systemName: "play.circle", withConfiguration: UIImage.SymbolConfiguration(pointSize: 30))
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .label
        return button
    }()
    
    private let movieTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let moviePosterUIImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(moviePosterUIImageView)
        contentView.addSubview(movieTitleLabel)
        contentView.addSubview(playMovieButton)
        
        applyConstraints()
    }
    
    private func applyConstraints() {
        let moviePosterUIImageViewConstraints = [
            moviePosterUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            moviePosterUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            moviePosterUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            moviePosterUIImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        let movieTitleLabelConstraints = [
            movieTitleLabel.leadingAnchor.constraint(equalTo: moviePosterUIImageView.trailingAnchor, constant: 20),
            movieTitleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
        let playMovieButtonConstraints = [
            playMovieButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            playMovieButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(moviePosterUIImageViewConstraints)
        NSLayoutConstraint.activate(movieTitleLabelConstraints)
        NSLayoutConstraint.activate(playMovieButtonConstraints)
    }
    
    public func configure(with model: MovieViewModel) {

        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model.posterURL)") else { return }
        
        moviePosterUIImageView.sd_setImage(with: url, completed: nil)
        movieTitleLabel.text = model.movieName
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }


}
