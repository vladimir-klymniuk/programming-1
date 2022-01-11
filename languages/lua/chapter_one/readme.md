UNIX Shell scripting 
```
    #!/usr/local/bin/lua
```

```
    #!/usr/bin/env lua
```

Интерпретатор вызывается следующим образом:
```
    lua [options] [script [args]]
```    

Все параметры необязательны. Как мы уже видели, когда мы запускаем lua без аргументов он переходит в интерактивный режим.

```
    lua -e "print(math.sin(12))" 
```

```r
(UNIX требует двойных кавычек, чтобы командный интерпретатор (shell) не разбирал скобки).

    Опция -l загружает библиотеку. Как мы уже видели ранее, -i переводит интерпретатор в интерактивный режим после обработки 
    остальных аргументов. Таким образом, следующий вызов, загрузит библиотеку lib^ затем выполнит присваивание x=10 и наконец перейдет в интереативный режим.
```

```bash
    lua -i -llib -e "x = 10"
```
В интерактивном режиме вы можете напечатать значение выражения, просто набрав строку. начинающуюся со знака равенства, за которым следует выражение:

```bash
    math.sin(3)
    a = 30
```

```r
Это особенность позволяет использовать Lua как калькулятор. 
Перед выполнением своих аргументов интерпретатор ищет переменную окружения с именем LUA_INIT_5_2 или, если такой переменной нет, LUA_INIT. Если одна из этих переменных присутсвует и ее значение имеет вид @имяфайла, то интерпретатор запускает данный файл. Если LUA_INIT_5_2 (или LUA_INIT) определена, но не начинается с символа '@', то интерпретатор предполагает, что она содержит выполнимый код на Lua и выполняет его. LUA_INIT дает огромныее возмодности по конфигурированию интерпретатора, посколько при конфигурировании нам дотупна вся мощь Lua. Мы можем загрузить пакеты, изменить текущий путь, определить свои собственные функции, переименовать или уничтожить функции и т.п.

Скрипт может получить свои аргументы в глобальной переменной `arg`. Если у нас есть вызов вида `%lua script a b c`, то интерпретатор
создает таблицу `arg` со всеми аргументами командной строки перед выполнением скрипта. Имя скрипта располодено по индексу 0, первый аргумент 
(в примере это "а") расположен по индексу 1 итд Предшествующие опции расположены по негативным индексам, поскольку они расположены пред именем скрипта. 
Например, рассмотрим следующий вызов:
```

`% lua -e "sin=math.sib" script a b`

Интерпретатор собирает аргументы следующим образом:

```shell
    arg[-3] = "lua"
    arg[-2] = "-e"
    arg[-1] = "sin=math.sin"
    arg[0]  = "script"
    arg[1]  = "a"
    arg[2]  = "b"
```

Чаще всего скрипт использует только положительные индексы (в примере это arg [1] и [2]).
Начиная с Lua 5.1 скрипт также может получить свои аргументы при помози выражения ...(три точки). 
В главной части скрипта это выражение дает все аргументы скрипта.