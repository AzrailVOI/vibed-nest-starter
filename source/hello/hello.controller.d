module hello.hello.controller;

import vibe.vibe;
import hello.hello.service;

class HelloController {
    private HelloService helloService;

    /// Конструктор с внедрением зависимости
    this(HelloService helloService) {
        this.helloService = helloService;
    }

    /// Обработчик GET запроса по маршруту /hello/random
    void getRandom(HTTPServerRequest req, HTTPServerResponse res) {
        int randomNumber = helloService.getRandomNumber();
        res.headers["Content-Type"] = "application/json; charset=UTF-8";
        // Формирование JSON-ответа
        res.writeBody(`{"random": ` ~ randomNumber.to!string ~ `}`);
    }

    void getHello(HTTPServerRequest req, HTTPServerResponse res) {
        res.headers["Content-Type"] = "application/json; charset=UTF-8";
        // Формирование JSON-ответа
        res.writeBody(`{"message": "` ~ helloService.getMessage() ~ `"}`);
    }
}
