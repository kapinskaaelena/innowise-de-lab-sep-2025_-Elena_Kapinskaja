# Упражнение 1: Операции со строкой

# Исходная строка
text = "Python Programming"

# 1. Выводим длину строки
length = len(text)
print("Длина строки:", length)  # Считаем все символы, включая пробел

# 2. Выводим символ по индексу 7
char_at_index_7 = text[7]
print("Символ по индексу 7:", char_at_index_7)  # Должен быть 'P'

# 3. Выводим последние 3 символа
last_three = text[-3:]
print("Последние 3 символа:", last_three)  # 'ing'

# 4. Проверяем наличие подстроки "gram"
contains_substring = "gram" in text
print("Содержит 'gram'?", contains_substring)  # True или False
