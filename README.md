1. Працюємо дальше з БД "Бібліотека".
2. Таблицю "книжка" з полями(
	- назва книги(не null, до 120 символів),
	- опис(потрібно подумати який тип даних),
	- дата публікації(не null, default значення "2018-01-01"),#date
	- категорія(не null, до 30 символів),
	- isbn (не null, до 20 символів, унікальний),
	- кількість сторінок(не null)
	- ім"я автора (не null, до 45 символів),
	- прізвище автора (не null, до 45 символів),
	- email автора (не null, до 50 символів, унікальне)
	- вік автора(не null),
	- дата народження автора(не null),
	- нагороди автора(до 120 символів, якщо нема - то NULL)
)
3. Добавити в таблицю 25 записів.
4. Потрібно написати наступні запити:
- витягнути всі книжки
- обновити прізвище автора в 2х книжках
- підрахувати кількість книжок, в яких автори мають нагороди
- вивести інформацію про книжку з найменшою кількістю сторінок
- вивести максимальну кількість сторінок
- вивести середню ціну між всіма книжками
- порахувати суму книжок за категорією
- вивести мінімальну ціну книжки
- вивести інформацію про книжку з найменшою ціною
- вивести книжки, де ціна матиме 4 знаки після коми, відсортовано за назвою книги
- вивести книжки за limit (5, 5), (10, 6) та відсортувати за датою публікації.
- написати 3 запити, використавши різні види пошуку за співпадіннями(like)
- вивести книжки де ціна на проміжку: 1. 50-120, 2. не включаючи проміжок 200-600.
- 3 запити на видалення книжки(за id, name, isbn)
