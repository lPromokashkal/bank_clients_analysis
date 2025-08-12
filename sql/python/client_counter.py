""
Программа для подсчета клиентов в гипотетической базе данных
Для работы требуется pandas
"""

import pandas as pd

def count_clients(dataframe):
    """Подсчитывает количество клиентов в DataFrame"""
    if not isinstance(dataframe, pd.DataFrame):
        raise ValueError("Input must be a pandas DataFrame")
    return len(dataframe)

if __name__ == "__main__":
    # Пример использования с тестовыми данными
    test_data = pd.DataFrame({
        'client_id': [1, 2, 3],
        'name': ['Иванов И.', 'Петрова А.', 'Сидоров В.'],
        'active': [True, False, True]
    })
    
    try:
        num_clients = count_clients(test_data)
        print(f"Количество клиентов: {num_clients}")
    except Exception as e:
        print(f"Ошибка: {e}")
