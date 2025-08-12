import pandas as pd

def count_clients(dataframe):
    """Подсчитывает количество клиентов в DataFrame
    
    Аргументы:
        dataframe: pd.DataFrame - данные клиентов
        
    Возвращает:
        int - количество клиентов
        
    Исключения:
        ValueError - если входные данные не DataFrame
    """
    if not isinstance(dataframe, pd.DataFrame):
        raise ValueError("Входные данные должны быть pandas DataFrame")
    return len(dataframe)

if __name__ == "__main__":
    # Создаем тестовый DataFrame
    test_data = pd.DataFrame({
        'client_id': [1, 2, 3],
        'name': ['Иванов', 'Петрова', 'Сидоров'],
        'active': [True, False, True]
    })
    
    try:
        # Выводим результат с форматированием
        print(f"Найдено клиентов: {count_clients(test_data)}")
    except Exception as e:
        print(f"Произошла ошибка: {e}")
