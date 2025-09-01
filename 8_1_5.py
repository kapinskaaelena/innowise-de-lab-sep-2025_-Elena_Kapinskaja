# Упражнение 5 (опционально): Поиск индексов двух чисел, сумма которых равна target

# Пример 1
nums = [2, 7, 11, 15]
target = 9

# Решение через перебор всех пар
for i in range(len(nums)):
    for j in range(i + 1, len(nums)):
        if nums[i] + nums[j] == target:
            print("Ответ:", [i, j])  # [0, 1]
            break

# Пример 2
nums = [3, 2, 4]
target = 6

for i in range(len(nums)):
    for j in range(i + 1, len(nums)):
        if nums[i] + nums[j] == target:
            print("Ответ:", [i, j])  # [1, 2]
            break
