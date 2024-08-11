# deldos

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


