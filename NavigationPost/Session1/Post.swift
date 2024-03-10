//
//  Post.swift
//  NavigationPost
//
//  Created by Aysel on 06.03.2024.
//

import SwiftUI

struct Post: Identifiable {
    let id: Int
    let title: String
    let subtitle: String
    let description: String
    let image: Image
    
    static let data = [
        Post(id: 1,
             title: "Нетология. Меряем карьеру через образование.",
             subtitle: "It supports a wide variety of media file formats, audio and video codecs, and subtitle types.",
             description: "Создайте массив из минимум четырех публикаций. Все данные, в том числе изображения для публикаций, используйте на свой вкус.",
             image: Image("01")),
        Post(id: 2,
             title: "Нетология - это образование.",
             subtitle: "Suppose the recipient has read your heading, subtitle, and the first paragraph.",
             description: "От 'Hello, World' до первого сложного iOS-приложения - всего один курс. Если чувствуете в себе силу для покорения топов AppStore - пора начинать действовать! Профессия «iOS-разработчик» - тот самый путь, по которому стоит пройти до самого конца. Вы научитесь создавать приложения на языке Swift с нуля: от начинки до интерфейса. Чтобы закрепить знания на практике, каждый студент подготовит дипломную работу - VK-like приложение с возможностью публиковать фотографии, использовать нпьтры, ставить лайки и подписываться на других",
             image: Image("02")),
        Post(id: 3,
             title: "Нетология",
             subtitle: "The game doesn't even have a subtitle yet.",
             description: "Внимание! Если вы выполнили прошлое задание не в отдельном классе-наследнике.",
             image: Image("03")),
        Post(id: 4,
             title: "Netology",
             subtitle: "Hit to select a desired subtitle language.",
             description: "Ранее созданный массив с публикациями используйте в качестве источника данных для таблицы..",
             image: Image("04"))
    ]
}




