"""
Программа для подсчета клиентов в гипотетической базе данных
Требует pandas
"""

import pandas as pd

def count_clients(dataframe):
    """Подсчитывает количество клиентов в DataFrame"""
    if not isinstance(dataframe, pd.DataFrame):
        raise ValueError("Input must be a pandas DataFrame")
    return len(dataframe)

if __name__ == "__main__":
    # Тестовые данные
    test_data = pd.DataFrame({
        'client_id': [1, 2, 3],
        'name': ['Иванов', 'Петрова', 'Сидоров'],
        'active': [True, False, True]
    })
    
    try:
        print(f"Клиентов найдено: {count_clients(test_data)}")
    except Exception as e:
        print(f"Ошибка: {e}")
