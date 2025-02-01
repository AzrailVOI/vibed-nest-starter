module app;

import vibe.vibe;
import hello.hello.mod;

void main() {
    // Настройка параметров HTTP-сервера
    auto settings = new HTTPServerSettings;
    settings.port = 8080;

    // Создание роутера
    auto router = new URLRouter;

    // Инициализация модуля hello
    auto helloModule = new HelloModule();
    helloModule.registerRoutes(router);

    // Запуск HTTP-сервера с заданным роутером
    listenHTTP(settings, router);
    runApplication();
}
