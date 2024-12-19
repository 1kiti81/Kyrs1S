﻿#language: ru

@tree

Функционал: <описание фичи>

Как Менеджер по продажам я хочу
рассчитать сумму заказа 
чтобы изменить кол-во и цену   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 
* Открытие формы создания документа
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
* 
	Тогда открылось окно "Заказы товаров"
	И в таблице 'Список' я перехожу к строке:
		| "Автор"                | "Валюта взаиморасчетов" | "Вид цен" | "Дата"                | "Номер"     | "Организация"        | "Покупатель"         | "Склад" | "Состояние заказа" |
		| "Менеджер по продажам" | "Рубли"                 | "Оптовая" | "05.05.2023 21:33:50" | "000000008" | "ООО "Все для дома"" | "Магазин "Продукты"" | "Малый" | "Закрыт"           |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ * от *"
	И в таблице 'Товары' я устанавливаю сортировку по колонке 'Товар'
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "35,00"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я увеличиваю значение
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "301"
	И в таблице 'Товары' я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Заказ * от * *" в течение 20 секунд
* Проверка заполнения табличной части
	Тогда таблица 'Товары' стала равной:
	| 'Товар'  | 'Цена'  | 'Количество' | 'Сумма'     |
	| 'Йогурт' | '35,00' | '301'        | '10 535,00' |	
	И я нажимаю на кнопку с именем 'ФормаЗаписать'