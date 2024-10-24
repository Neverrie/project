#!/bin/bash

# Создание библиотеки
g++ -c src/background_runner.cpp -o src/background_runner.o
ar rcs libbackground_runner.a src/background_runner.o

# Сборка тестовой программы
g++ test/main.cpp -L. -lbackground_runner -o test_program
