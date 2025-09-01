# Упражнение 2: Функции с параметрами

# Исходные данные
prices = [1000, 3499, 250]
nds = 0.20  # НДС 20%

# 1. Функция для расчёта цены с НДС
def add_vat(price, tax_rate):
    """
    Возвращает цену с учётом НДС.
    price — исходная цена
    tax_rate — ставка НДС (например, 0.20 для 20%)
    """
    return price + price * tax_rate

# 2. Применяем функцию ко всем элементам списка
for price in prices:
    final_price = add_vat(price, nds)
    print(f"Цена с НДС для {price} руб.: {final_price:.2f} руб.")
