module hello.hello.mod;

import vibe.vibe;
import hello.hello.controller;
import hello.hello.service;

class HelloModule {
    private HelloService helloService;
    private HelloController helloController;

    /// Конструктор модуля — создаёт необходимые экземпляры
    this() {
        helloService = new HelloService();
        helloController = new HelloController(helloService);
    }

    /// Регистрация маршрутов, специфичных для модуля "hello"
    void registerRoutes(URLRouter router) {

        router.get("/hello", (HTTPServerRequest req, HTTPServerResponse res) {
            helloController.getHello(req, res);
        });
    }
}
