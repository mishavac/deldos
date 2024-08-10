# deldos
 RUS
deldos — это инновационное приложение, которое позволяет пользователям управлять своим Mac с помощью iPhone. Проект предоставляет возможность удаленно запускать приложения на macOS, отправляя команды с мобильного устройства через простой и удобный интерфейс.

С помощью deldos вы можете:

    Запускать любые приложения на вашем Mac непосредственно с iPhone.
    Использовать текстовое поле для ввода команд, что позволяет гибко управлять вашим компьютером, например, открывать браузеры, текстовые редакторы или любые другие приложения.
    Легко интегрировать iPhone и Mac для повышения продуктивности и комфорта работы.

deldos создан для тех, кто ценит удобство и эффективность, стремясь сократить время на выполнение рутинных задач и улучшить взаимодействие между устройствами Apple.
Инструкция по запуску deldos

    Запуск сервера:
        Откройте терминал и перейдите в директорию, где находится файл server.py.
        Запустите сервер командой:

        bash

        python3 server.py

        После запуска сервера в терминале появятся IP-адреса, на которых он работает (например, http://127.0.0.1:5000 и http://<ваш_ip_адрес>:5000).

    Настройка iOS-приложения:
        В Xcode откройте файл ContentView.swift.
        Перейдите к 28-й строке кода, где указан URL сервера.
        Замените URL на IP-адрес, который был показан при запуске сервера (например, http://<ваш_ip_адрес>:5000).
        Убедитесь, что ваш iPhone подключен к той же сети, что и ваш Mac.

    Сборка и запуск iOS-приложения:
        Соберите и запустите приложение на вашем iPhone через Xcode.
        Используйте приложение для отправки команд на сервер, который выполнит их на вашем Mac.

    Отправка команд:
        В приложении введите название приложения или команду, которую хотите выполнить на Mac.
        Нажмите кнопку «Run Command», чтобы отправить запрос на сервер.
        Сервер выполнит команду на Mac и вернет результат.

Следуя этим шагам, вы сможете управлять своим Mac с помощью iPhone через приложение deldos.
RUS

ENG
deldos is an innovative application that allows users to control their Mac remotely using an iPhone. This project enables you to launch macOS applications directly from your mobile device, offering a simple and user-friendly interface.

With deldos, you can:

    Launch any application on your Mac directly from your iPhone.
    Use a text input field to send commands, providing flexible control over your computer—whether it’s opening browsers, text editors, or any other application.
    Seamlessly integrate your iPhone and Mac for enhanced productivity and convenience.

deldos is designed for those who value efficiency and convenience, aiming to reduce the time spent on routine tasks and improve the interaction between Apple devices.
How to Run deldos

    Start the Server:
        Open a terminal and navigate to the directory where the server.py file is located.
        Start the server by running the following command:

        bash

        python3 server.py

        After the server starts, you will see IP addresses displayed in the terminal, where it's running (e.g., http://127.0.0.1:5000 and http://<your_ip_address>:5000).

    Configure the iOS Application:
        Open the ContentView.swift file in Xcode.
        Go to line 28, where the server URL is specified.
        Replace the URL with the IP address displayed when you started the server (e.g., http://<your_ip_address>:5000).
        Ensure that your iPhone is connected to the same network as your Mac.

    Build and Run the iOS Application:
        Build and run the application on your iPhone using Xcode.
        Use the app to send commands to the server, which will execute them on your Mac.

    Sending Commands:
        In the app, enter the name of the application or the command you want to execute on your Mac.
        Press the "Run Command" button to send the request to the server.
        The server will execute the command on your Mac and return the result.

By following these steps, you'll be able to control your Mac using your iPhone through the deldos application.
ENG


