//
//  ScreenSaverViewController.swift
//  Chat me
//
//  Created by Александр Борисов on 05.10.2022.
//

import UIKit

class ScreenSaverViewController: UIViewController {

    //MARK: - view

    let view1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let view2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let view3: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let view4: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let view5: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let view6: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let view7: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let view8: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let view9: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let view10: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()


    //MARK: - image

    let imageView1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "human1")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let imageView2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "human2")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let imageView3: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "human4")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let imageView4: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "human5")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let imageView5: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "human6")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let imageView6: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "human8")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let imageView7: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "human1")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let imageView8: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "human2")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let imageView9: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "human4")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let imageView10: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "human5")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    //MARK: - Support
    let distanceBetweenView: CGFloat = 2

    func width() -> CGFloat {
        let width = self.view.bounds.width
        let whiteSpaces: CGFloat = 2
        let distance = (width - 11 * whiteSpaces) / 10
        return distance
    }

    //MARK: - viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true

        setupView1()
        setupView2()
        setupView3()
        setupView4()
        setupView5()
        setupView6()
        setupView7()
        setupView8()
        setupView9()
        setupView10()

        loadingAnimateSettings()
        loadingViewAnimation()
    }


    //MARK: - Setup views
    func setupView1() {
        view.addSubview(view1)
        view1.addSubview(imageView1)


        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: distanceBetweenView).isActive = true
        view1.widthAnchor.constraint(equalToConstant: width()).isActive = true
        view1.heightAnchor.constraint(equalToConstant: width()).isActive = true
        view1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        imageView1.heightAnchor.constraint(equalToConstant: width()).isActive = true
        imageView1.widthAnchor.constraint(equalToConstant: width()).isActive = true
        imageView1.centerYAnchor.constraint(equalTo: view1.centerYAnchor).isActive = true
        imageView1.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
    }

    func setupView2() {
        view.addSubview(view2)
        view2.addSubview(imageView2)

        view2.leftAnchor.constraint(equalTo: view1.rightAnchor, constant: distanceBetweenView).isActive = true
        view2.widthAnchor.constraint(equalTo: view1.widthAnchor).isActive = true
        view2.heightAnchor.constraint(equalTo: view1.heightAnchor).isActive = true
        view2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        imageView2.heightAnchor.constraint(equalTo: imageView1.heightAnchor).isActive = true
        imageView2.widthAnchor.constraint(equalTo: imageView1.widthAnchor).isActive = true
        imageView2.centerYAnchor.constraint(equalTo: view2.centerYAnchor).isActive = true
        imageView2.centerXAnchor.constraint(equalTo: view2.centerXAnchor).isActive = true
    }

    func setupView3() {
        view.addSubview(view3)
        view3.addSubview(imageView3)

        view3.leftAnchor.constraint(equalTo: view2.rightAnchor, constant: distanceBetweenView).isActive = true
        view3.widthAnchor.constraint(equalTo: view2.widthAnchor).isActive = true
        view3.heightAnchor.constraint(equalTo: view2.heightAnchor).isActive = true
        view3.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        imageView3.heightAnchor.constraint(equalTo: imageView2.heightAnchor).isActive = true
        imageView3.widthAnchor.constraint(equalTo: imageView2.widthAnchor).isActive = true
        imageView3.centerYAnchor.constraint(equalTo: view3.centerYAnchor).isActive = true
        imageView3.centerXAnchor.constraint(equalTo: view3.centerXAnchor).isActive = true
    }

    func setupView4() {
        view.addSubview(view4)
        view4.addSubview(imageView4)

        view4.leftAnchor.constraint(equalTo: view3.rightAnchor, constant: distanceBetweenView).isActive = true
        view4.widthAnchor.constraint(equalTo: view3.widthAnchor).isActive = true
        view4.heightAnchor.constraint(equalTo: view3.heightAnchor).isActive = true
        view4.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        imageView4.heightAnchor.constraint(equalTo: imageView3.heightAnchor).isActive = true
        imageView4.widthAnchor.constraint(equalTo: imageView3.widthAnchor).isActive = true
        imageView4.centerYAnchor.constraint(equalTo: view4.centerYAnchor).isActive = true
        imageView4.centerXAnchor.constraint(equalTo: view4.centerXAnchor).isActive = true
    }

    func setupView5() {
        view.addSubview(view5)
        view5.addSubview(imageView5)

        view5.leftAnchor.constraint(equalTo: view4.rightAnchor, constant: distanceBetweenView).isActive = true
        view5.widthAnchor.constraint(equalTo: view4.widthAnchor).isActive = true
        view5.heightAnchor.constraint(equalTo: view4.heightAnchor).isActive = true
        view5.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        imageView5.heightAnchor.constraint(equalTo: imageView4.heightAnchor).isActive = true
        imageView5.widthAnchor.constraint(equalTo: imageView4.widthAnchor).isActive = true
        imageView5.centerYAnchor.constraint(equalTo: view5.centerYAnchor).isActive = true
        imageView5.centerXAnchor.constraint(equalTo: view5.centerXAnchor).isActive = true
    }

    func setupView6() {
        view.addSubview(view6)
        view6.addSubview(imageView6)

        view6.leftAnchor.constraint(equalTo: view5.rightAnchor, constant: distanceBetweenView).isActive = true
        view6.widthAnchor.constraint(equalTo: view5.widthAnchor).isActive = true
        view6.heightAnchor.constraint(equalTo: view5.heightAnchor).isActive = true
        view6.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        imageView6.heightAnchor.constraint(equalTo: imageView5.heightAnchor).isActive = true
        imageView6.widthAnchor.constraint(equalTo: imageView5.widthAnchor).isActive = true
        imageView6.centerYAnchor.constraint(equalTo: view6.centerYAnchor).isActive = true
        imageView6.centerXAnchor.constraint(equalTo: view6.centerXAnchor).isActive = true
    }

    func setupView7() {
        view.addSubview(view7)
        view7.addSubview(imageView7)

        view7.leftAnchor.constraint(equalTo: view6.rightAnchor, constant: distanceBetweenView).isActive = true
        view7.widthAnchor.constraint(equalTo: view6.widthAnchor).isActive = true
        view7.heightAnchor.constraint(equalTo: view6.heightAnchor).isActive = true
        view7.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        imageView7.heightAnchor.constraint(equalTo: imageView6.heightAnchor).isActive = true
        imageView7.widthAnchor.constraint(equalTo: imageView6.widthAnchor).isActive = true
        imageView7.centerYAnchor.constraint(equalTo: view7.centerYAnchor).isActive = true
        imageView7.centerXAnchor.constraint(equalTo: view7.centerXAnchor).isActive = true
    }

    func setupView8() {
        view.addSubview(view8)
        view8.addSubview(imageView8)

        view8.leftAnchor.constraint(equalTo: view7.rightAnchor, constant: distanceBetweenView).isActive = true
        view8.widthAnchor.constraint(equalTo: view7.widthAnchor).isActive = true
        view8.heightAnchor.constraint(equalTo: view7.heightAnchor).isActive = true
        view8.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        imageView8.heightAnchor.constraint(equalTo: imageView7.heightAnchor).isActive = true
        imageView8.widthAnchor.constraint(equalTo: imageView7.widthAnchor).isActive = true
        imageView8.centerYAnchor.constraint(equalTo: view8.centerYAnchor).isActive = true
        imageView8.centerXAnchor.constraint(equalTo: view8.centerXAnchor).isActive = true
    }

    func setupView9() {
        view.addSubview(view9)
        view9.addSubview(imageView9)

        view9.leftAnchor.constraint(equalTo: view8.rightAnchor, constant: distanceBetweenView).isActive = true
        view9.widthAnchor.constraint(equalTo: view8.widthAnchor).isActive = true
        view9.heightAnchor.constraint(equalTo: view8.heightAnchor).isActive = true
        view9.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        imageView9.heightAnchor.constraint(equalTo: imageView8.heightAnchor).isActive = true
        imageView9.widthAnchor.constraint(equalTo: imageView8.widthAnchor).isActive = true
        imageView9.centerYAnchor.constraint(equalTo: view9.centerYAnchor).isActive = true
        imageView9.centerXAnchor.constraint(equalTo: view9.centerXAnchor).isActive = true
    }

    func setupView10() {
        view.addSubview(view10)
        view10.addSubview(imageView10)

        view10.leftAnchor.constraint(equalTo: view9.rightAnchor, constant: distanceBetweenView).isActive = true
        view10.widthAnchor.constraint(equalTo: view9.widthAnchor).isActive = true
        view10.heightAnchor.constraint(equalTo: view9.heightAnchor).isActive = true
        view10.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        imageView10.heightAnchor.constraint(equalTo: imageView9.heightAnchor).isActive = true
        imageView10.widthAnchor.constraint(equalTo: imageView9.widthAnchor).isActive = true
        imageView10.centerYAnchor.constraint(equalTo: view10.centerYAnchor).isActive = true
        imageView10.centerXAnchor.constraint(equalTo: view10.centerXAnchor).isActive = true
    }

    //MARK: - setup animation
    func loadingAnimateSettings() {
        view1.layer.cornerRadius = 9
        view2.layer.cornerRadius = 9
        view3.layer.cornerRadius = 9
        view4.layer.cornerRadius = 9
        view5.layer.cornerRadius = 9
        view6.layer.cornerRadius = 9
        view7.layer.cornerRadius = 9
        view8.layer.cornerRadius = 9
        view9.layer.cornerRadius = 9
        view10.layer.cornerRadius = 9

        view1.alpha = 0
        view2.alpha = 0
        view3.alpha = 0
        view4.alpha = 0
        view5.alpha = 0
        view6.alpha = 0
        view7.alpha = 0
        view8.alpha = 0
        view9.alpha = 0
        view10.alpha = 0
    }


    func loadingViewAnimation() {
        UIView.animate(withDuration: 0.4) { [weak self] in
            self?.view1.alpha = 0
            self?.view2.alpha = 1

        } completion: { _ in
            UIView.animate(withDuration: 0.4) { [weak self] in
                self?.view2.alpha = 0
                self?.view3.alpha = 1

            } completion: { _ in
                UIView.animate(withDuration: 0.4) { [weak self] in
                    self?.view3.alpha = 0
                    self?.view4.alpha = 1

                } completion: { _ in
                    UIView.animate(withDuration: 0.4) { [weak self] in
                        self?.view4.alpha = 0
                        self?.view5.alpha = 1

                    } completion: { _ in
                        UIView.animate(withDuration: 0.4) { [weak self] in
                            self?.view5.alpha = 0
                            self?.view6.alpha = 1

                        } completion: { _ in
                            UIView.animate(withDuration: 0.4) { [weak self] in
                                self?.view6.alpha = 0
                                self?.view7.alpha = 1

                            } completion: { _ in
                                UIView.animate(withDuration: 0.4) { [weak self] in
                                    self?.view7.alpha = 0
                                    self?.view8.alpha = 1

                                } completion: { _ in
                                    UIView.animate(withDuration: 0.4) { [weak self] in
                                        self?.view8.alpha = 0
                                        self?.view9.alpha = 1

                                    } completion: { _ in
                                        UIView.animate(withDuration: 0.4) { [weak self] in
                                            self?.view9.alpha = 0
                                            self?.view10.alpha = 1

                                        } completion: { _ in
                                            UIView.animate(withDuration: 0.4) { [weak self] in
                                                self?.view1.alpha = 1
                                                self?.view10.alpha = 0

                                            } completion: { [weak self] _ in
                                                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                                guard let vc = storyboard.instantiateViewController(withIdentifier: "TabBarController") as? TabBarController
                                                else { return }
                                                guard let self = self
                                                else { return }
                                                self.navigationController?.pushViewController(vc, animated: true)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}
