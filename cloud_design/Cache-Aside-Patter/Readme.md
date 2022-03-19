## Cache-Aside Pattern | Кэш с боку паттерн

```txt
    Load data on demand into a cache from a data store. This pattern can improve performance and also helps to maintain consistency between data held in the cache and the data in the underlying data store.

    Загрузка данных по востребованию в кэш из датахранилища. Этот паттерн может улучшить производительность и так же помогает поддерживать консистентвость между данными хранящимися в кэше и оригинальном хранилище.
```

## Context and Problem | Контекст и Проблема

```txt
    Applications use a cache to optimize repeated access to information held in a data store. However, it is usually impractical to expect that cached data will always be completely consistent with the data in the data store. Applications should impement a strategy that helps to ensure that he data in the cache is up to date as far as possible, but can also detect and handle situations that arise when the data in the cache has become stale.
```

```txt
    Приложение использует кэш для оптимизации повторяющихся запросов доступа к информации хранящейся в `datastore`. Тем не менее, не практично ожидать что кэшированные данные будут полностью консистентны с данными в `data store`. Приложению необходимо имлпементировать стратегию которая помогает удостоверится в том что данные актуальны так долго как это возможно, но так же и обнаруживать и обрабатывать ситуации когда данные в кеше перестали быть актуальными.
```

## Solution | Решение

```txt
    Many commercial caching systems provide read-through and write-through/write-behind operations. In these systems, an application retrieves data by referencing the cache. If the data is not in the cache, it is transparently retrieved from the data store and added to the cache. Any modifications to data held in the cache are automatically written back to the data store as well.

    For caches that do not provide this functionality, it is the responsibility of the applications that use the cache to maintain the data in the cache.

    An application can emulate the functionality of read-through caching by implementing the cache-aside strategy. This stratefy effectively loads data into the cache on demand.
```

```txt
    Многие комерческие системы кэширования предоставляют операции чтение-через, запись-через/запись-рядом. В этих системах приложение извлекает данные используя ссылки в кэше. Любая модификация в данных хранящаяся в кеше автоматически записана так же обратно в `data store`.

    Для кэша который не предоставляет функциональность, ответственность за его поддерку лежит на приложении.

    Приложение может эмулировать функционал чтения-через и кэшпирование кэш-сбоку стратегию. Эта стратегия эффективно загружает данные в кэш по востребованию.
```

Дать определение операциям:

    read-through 
    write-through
    write-behin
    cache-aside