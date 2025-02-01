module hello.hello.service;

import std.random;      // Для генерации случайного числа
import std.conv : to;   // Для конвертации числа в строку

class HelloService {
    /// Метод, возвращающий случайное число в диапазоне от 1 до 100
    int getRandomNumber() {
        return uniform(1, 100);
    }

    string getMessage() {
        return "Hello, vibe.d с NestJS-подходом (модули, контроллеры, сервисы)!";
    }
}
