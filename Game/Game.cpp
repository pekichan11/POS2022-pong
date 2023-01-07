#include "Game.h"

Game::Game() = default;

void Game::play() {
    sf::RenderWindow window(sf::VideoMode(this->windowWidth, this->windowHeight), "Pong");
    std::string socketText = "n";

    char buffer[1];
    std::size_t recieved;

    while (window.isOpen()) {
        sf::Event event{};
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
        }
        if (this->server) {
            this->socket->send(socketText.c_str(), socketText.length() + 1);
            this->socket->receive(buffer, sizeof(buffer), recieved);
        } else {
            this->socket->receive(buffer, sizeof(buffer), recieved);
            this->socket->send(socketText.c_str(), socketText.length() + 1);
        }



        //Controls
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up)) {
            this->player1.moveUp();
            socketText = "u";
        }

        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down)) {
            this->player1.moveDown();
            socketText = "d";
        }

        if(!sf::Keyboard::isKeyPressed(sf::Keyboard::Down) &&  !sf::Keyboard::isKeyPressed(sf::Keyboard::Up)) {
            socketText = "n";
        }


        //recieving data from socket
        socketText = buffer;
        std::cout << "socket text " << socketText << std::endl;
        if (socketText.compare("u")) {
            this->player2.moveUp();
        }

        if (socketText.compare("d")) {
            this->player2.moveDown();
        }

//        if (sf::Keyboard::isKeyPressed(sf::Keyboard::W)) {
//            this->player2.moveUp();
//        }
//
//        if (sf::Keyboard::isKeyPressed(sf::Keyboard::S)) {
//            this->player2.moveDown();
//        }

        //Basic logic
        this->ball.reboundSides(this->playableHeight);
        this->ball.passLeft(this->windowWidth, this->playableHeight) ? this->counter1++ : 0;
        this->ball.passRight(this->windowWidth, this->playableHeight) ? this->counter2++ : 0;

        if (this->ball.getBallFloatRec().intersects(player1.getPlatformFloatRect())) {
            this->ball.reboundPlatform();
        }

        if (this->ball.getBallFloatRec().intersects(this->player2.getPlatformFloatRect())) {
            this->ball.reboundPlatform();
        }


        //Text
        std::stringstream sSteam1;
        std::stringstream sSteam2;

        sSteam1 << "Player1: " << this->counter1;
        sSteam2 << "Player2: " << this->counter2;

        sf::Text textP1;
        sf::Text textP2;
        sf::Font font;
        font.loadFromFile("../Malta_INK.ttf");

        textP1.setFont(font);
        textP2.setFont(font);
        textP1.setCharacterSize(35);
        textP2.setCharacterSize(35);
        textP1.setFillColor(sf::Color::Green);
        textP2.setFillColor(sf::Color::Green);

        textP1.setPosition(500, 550);
        textP2.setPosition(50, 550);

        textP1.setString(sSteam1.str());
        textP2.setString(sSteam2.str());

        //Update
        this->ball.update();
        this->player1.update();
        this->player2.update();

        //Draw
        window.clear(sf::Color::Black);

        window.draw(this->player1.getPlatform());
        window.draw(this->player2.getPlatform());
        window.draw(this->ball.getBall());
        window.draw(textP1);
        window.draw(textP2);
        window.display();
    }
}

void Game::operator()(void *gData, std::mutex& mutex) {
    ThreadData *data = (ThreadData*)gData;
    fprintf(stderr, "Game initiated\n");
    std::lock_guard<std::mutex> lock(mutex);
    data->results.emplace_back("Another run!");
    play();
}
