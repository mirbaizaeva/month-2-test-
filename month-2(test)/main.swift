import Foundation

//Критерии: Вы должны иметь 2 родительских(базовых) классов и по 2 наследующихся класса
//Каждый класс должен иметь не менее 3 переменных(1 из них - массив)
//Все свойства внутри классов должны быть закрытыми(приватными)
//Для массивов создать методы для добавления элемента, переопределения и удаления
//Вы должны иметь хотябы 1 закрытый метод внутри каждого класса
//Для каждого класса делать принт, говорящий о инициализации либо деинициализации элемента
//
//Когда закончите с подготовкой классов - создать по 3 объекта каждого из классов и пользуясь полиморфизмом и оператором is отобразить разные данные в консоль
//Когда перестаете работать с каким-то объектом - деинициализовать его
//Посчитать сколько переменных остались живыми(не были деинициализированы)
class Moll{
    var name: String
    var square: String
    
    init(name: String, square: String) {
        self.name = name
        self.square = square
    }
}
class Goods: Moll{
    var nameGoods: String
    var priceGoods: Int
   private var clothes = [Clothes]()
    
    init(name: String, square: String, nameGoods: String, priceGoods: Int) {
        self.nameGoods = nameGoods
        self.priceGoods = priceGoods
        super.init(name: name, square: square)
    }
    private func getClothes(_ name: String){
        var model = Clothes()
        for i in clothes{
            if i.name == name{
                print("\(name) - Production: \(production), Price: \(price)")
            }
        }
    }
    func addClothes(model: Clothes){
        clothes.append(model)
    }
}
class Product: Moll{
    var nameProduct: String
    var priceProduct: Int
    private var fruit = [Fruit]()
    
    init(name: String, square: String, nameProduct: String, priceProduct: Int) {
        self.nameProduct = nameProduct
        self.priceProduct = priceProduct
        super.init(name: name, square: square)
    }
    func getFruit(_ name: String){
        var model = Fruit()
        for i in fruit{
            if i.name == name{
                print("\(name) - Production: \(production), Price: \(price), Kg: \(kg)")
            }
        }
    }
    func addFruit(model: Fruit){
        fruit.append(model)
    }
    //
    class Clothes{
        var name: String
        var production: String
        var price: Int
        
        init(){
            self.name = ""
            self.production = ""
            self.price = 0
        }
        init(name: String, production: String, price: Int) {
            self.name = name
            self.production = production
            self.price = price
        }
    }
    //
    class Fruit{
        var name: String
        var production: String
        var price: Int
        var kg: String
        
        init(){
            self.name = ""
            self.production = ""
            self.price = 0
            self.kg = ""
        }
        init(name: String, production: String, price: Int, kg: String) {
            self.name = name
            self.production = production
            self.price = price
            self.kg = kg
        }
    }
}
