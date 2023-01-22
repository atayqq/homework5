//1)Создать пустой словарь товары. Ключ - название, цена - значение. Добавить 3 товара по очереди. Посчитать сумму зв все товары.

var basket: [String: Int] = [:]

basket["milk"] = 85
basket["bread"] = 25
basket["butter"] = 45


var totalSum = 0


for (key,value) in basket{
    totalSum += value

}
print ("Итоговая сумма: \(totalSum) сом")

//2)Создать словарь из 10 товаров. Составить программу, где ридлайн вызывается 3 раза и запрашивает название товара. Ввести название товаров и вывести информацию в виде чека:
//
//------Чек-------
//Наименование:                Сумма:
//Кока_кола                    40 сом
//Хлеб                         18 сом
//Колбаса                      160 сом


print("Введите продукт")

var products: [String: Int] = ["Кола": 45, "Латте": 190, "Каппучино":170, "Спрайт":45, "Маккиато": 220]
var basket1: [String: Int] = [:]

for _ in 1...5{
    let product = readLine()

    for (key,value) in products{
        if product == key {
            basket1.updateValue(value, forKey: key )

        }
    }
}

    func printChek(basket1: [String:Int]) {
        var totalSum = 0
        print ("-----Чек-----")
        print ("Наименование:     Сумма:")
        for (key, value) in basket1{
            print("\(key)              \(value) сом")
            totalSum += value
        }

        print ("------------")
        print ("Итого \(totalSum) сом")

    }

printChek(basket1: basket1)
