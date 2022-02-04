Таблицы 

Тип таблицы соответствует ассоциативному массиву. Ассоциативный массив - это массив, который можно индексировать не только числами, но и строками или  любым другим значением из языка, кроме nil. 


2.6. Функции 

Функции являются значениями первого класса в Lua: программы могут зависывать функции в переменные, передавать функции как аргументы для других функций и возвращать функции как результаи. Подобнаная возможность придает огромную гибкость языку; программа может переопределить функцию, чтобы добавить новую функциональность, или просто удалить функцию для создания безопасного окружения для выполнения фрагмента ненадежного кода. (например кода полученого от сети). Более того 

2.7 userdata и нити

Тип userdata позволяет запоминать произвольные данные языка C
в переменных Lua. У этого типа нет встроенных операций, за исключением присванивания и проверки на раверство. Значения данного типа используются для представления новых типов, созданных приложванием или библиоткеой, написанной на С;например, стандартная библиоткеа ввода/вывода использует их для представления открытых файлов. (C API)

нить (tread) - тип данных