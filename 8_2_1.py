# Упражнение 1: Функция без параметров — вывод текущей даты и времени

# Импортируем модуль datetime
from datetime import datetime

# Создаём функцию без параметров
def show_current_time():
    # Получаем текущие дату и время
    now = datetime.now()
    
    # Форматируем вывод: дата и время в читаемом виде
    formatted = now.strftime("%Y-%m-%d %H:%M:%S")
    
    # Печатаем результат
    print("Текущие дата и время:", formatted)

# Вызываем функцию
show_current_time()
