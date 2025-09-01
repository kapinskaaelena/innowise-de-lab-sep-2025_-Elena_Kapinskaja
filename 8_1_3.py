# Упражнение 3: Методы списка

# Исходный список
fruits = ["apple", "banana"]
print("Исходный список:", fruits)

# 1. Добавляем "orange" в конец списка
fruits.append("orange")
print("После добавления 'orange':", fruits)

# 2. Вставляем "grape" по индексу 1
fruits.insert(1, "grape")
print("После вставки 'grape' на позицию 1:", fruits)

# 3. Удаляем "banana"
fruits.remove("banana")
print("После удаления 'banana':", fruits)

# 4. Сортируем список по алфавиту
fruits.sort()
print("После сортировки:", fruits)

# 5. Переворачиваем список
fruits.reverse()
print("После переворота:", fruits)
