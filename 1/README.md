## описание
каталог тату-машинок с трех сайтов:
- https://tatu-shop.ru/products/category/rotary-tattoo-machines-pen
- https://28opt.ru/ez-tattoo
- https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki

## требования
- `gnu make`
- `docker compose`

## примечания
- если есть файл dumps/main.sql, то шаги 3-5,8 необязательны
- если после шага 7 выдалась ошибка, то нужно прописать `make start` снова

## шаги
1. python -m venv .venv
2. активация окружения
    - windows: .venv/Scripts/activate
    - macos/linux: source .venv/bin/activate
3. pip install -r requirements.txt
4. выбрать локальную среду .venv в init.ipynb
5. запустить init.ipynb
    - если вылетает ошибка, то поставить RESTART = False и запускать заново, пока скрипт успешно не отработает
6. создать .env по аналогии с .env.example
7. make start
8. импортировать полученный csv после работы init.ipynb по ручке /api/v1/product/import
9. перейти на сайт (если localhost, то http://127.0.0.1:8051/web)
