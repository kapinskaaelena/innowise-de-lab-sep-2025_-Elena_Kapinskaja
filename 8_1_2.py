# Упражнение 2: Методы строк и форматинг

# Исходная строка с пробелами и заглавными буквами
email = " USER@DOMAIN.COM "

# 1. Удаляем лишние пробелы по краям
clean_email = email.strip()  # 'USER@DOMAIN.COM'

# 2. Приводим к нижнему регистру
clean_email = clean_email.lower()  # 'user@domain.com'

# 3. Выводим результат
print("Отформатированный email:", clean_email)

# 4. Дополнительно: получим имя пользователя до '@'
username = clean_email.split('@')[0]
print("Имя пользователя:", username)  # 'user'
