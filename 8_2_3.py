# Упражнение 3 (опционально): Расчёт среднего балла с опцией игнорировать худшую оценку

# Функция для расчёта среднего балла
def calculate_average_score(scores, ignore_lowest=False):
    """
    Вычисляет средний балл.
    scores — список оценок
    ignore_lowest — если True, исключает минимальную оценку (если их больше одной)
    """
    if ignore_lowest and len(scores) > 1:
        scores = scores.copy()  # чтобы не менять оригинальный список
        scores.remove(min(scores))  # удаляем минимальную оценку

    return sum(scores) / len(scores)

# Данные студентов
student_data = [
    {'name': 'Алексей', 'scores': [85, 92, 78, 95]},
    {'name': 'Марина', 'scores': [65, 70, 58, 82]},
    {'name': 'Светлана', 'scores': [98, 95, 100]}
]

# 1. Расчёт среднего балла с учётом всех оценок
print(" Средний балл (все оценки):")
for student in student_data:
    avg = calculate_average_score(student['scores'])
    print(f"{student['name']}: {avg:.2f}")

# 2. Расчёт среднего балла без самой низкой оценки
print("\n Средний балл (без самой низкой оценки):")
for student in student_data:
    avg = calculate_average_score(student['scores'], ignore_lowest=True)
    print(f"{student['name']}: {avg:.2f}")
