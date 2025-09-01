# Упражнение 4: List comprehension и словари

# Исходный список слов
words = ["hello", "world", "python", "code"]

# 1. Создаём список длин слов
word_lengths = [len(word) for word in words]
print("Список длин слов:", word_lengths)  # [5, 5, 6, 4]

# 2. Список слов длиннее 4 символов
long_words = [word for word in words if len(word) > 4]
print("Слова длиннее 4 символов:", long_words)  # ['hello', 'world', 'python']

# 3. Словарь: {слово: длина}
word_dict = {word: len(word) for word in words}
print("Словарь слов и их длин:", word_dict)  # {'hello': 5, 'world': 5, 'python': 6, 'code': 4}
