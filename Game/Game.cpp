#include "Game.h"

Game::Game() = default;

void Game::play() {
    sf::RenderWindow window(sf::VideoMode(this->windowWidth, this->windowHeight), this->server? "Pong" : "client");
    std::string socketOut = "n";
    std::string socketIn = "n";
    char buffer[2000];
    std::size_t recieved;

    while (window.isOpen()) {
        sf::Event event{};
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        //Controls
        if (this->server) {
            if (!sf::Keyboard::isKeyPressed(sf::Keyboard::Down) && !sf::Keyboard::isKeyPressed(sf::Keyboard::Up)) {
                socketOut = "n";
            }

            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up)) {
                this->player1->moveUp();
                socketOut = "u";
            }

            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down)) {
                this->player1->moveDown();
                socketOut = "d";
            }
        } else {
            if (!sf::Keyboard::isKeyPressed(sf::Keyboard::S) && !sf::Keyboard::isKeyPressed(sf::Keyboard::W)) {
                socketOut = "n";
            }

            if (sf::Keyboard::isKeyPressed(sf::Keyboard::W)) {
                this->player2->moveUp();
                socketOut = "u";
            }

            if (sf::Keyboard::isKeyPressed(sf::Keyboard::S)) {
                this->player2->moveDown();
                socketOut = "d";
            }
        }


        recieved = 0;
        if (this->server) {
            this->socket->send(socketOut.c_str(), socketOut.length() + 1);
            this->socket->receive(buffer, sizeof(buffer), recieved);
        } else {
            this->socket->receive(buffer, sizeof(buffer), recieved);
            this->socket->send(socketOut.c_str(), socketOut.length() + 1);
        }

        socketIn = buffer;
        socketIn = socketIn.substr(0,1);

        if (strcmp(socketIn.c_str(), "u") == 0) {
            this->server ? this->player2->moveUp() : this->player1->moveUp();

        }

        if (strcmp(socketIn.c_str(), "d") == 0) {
            this->server ? this->player2->moveDown() : this->player1->moveDown();
        }

        //Basic logic
        this->ball->reboundSides(this->playableHeight);
        if (this->ball->passLeft(this->windowWidth, this->playableHeight)) {
            this->counter1++;
            this->rozstrel = true;
        }
        if (this->ball->passRight(this->windowWidth, this->playableHeight))  {
            this->counter2++;
            this->rozstrel = true;
        }

        if (rozstrel) {
            //this->player1->setPlatform(this->windowWidth - 20, this->windowHeight/2 - 100);
            //this->player2->setPlatform(10, this->windowHeight/2 - 100);

            if(this->server) {
                std::string out = (rand() % 2 == 0 ) ? "y" : "x";
                this->socket->send(out.c_str(), out.length() + 1);
                this->ball->changeVelocity(out);

            } else {
                std::string in;
                this->socket->receive(buffer, sizeof(buffer), recieved);
                in = buffer;
                in = in.substr(0, 1);
                this->ball->changeVelocity(in);
            }
            this->rozstrel = false;
        }

        if (this->ball->getBallFloatRec().intersects(player1->getPlatformFloatRect())) {
            this->ball->reboundPlatform();
        }

        if (this->ball->getBallFloatRec().intersects(this->player2->getPlatformFloatRect())) {
            this->ball->reboundPlatform();
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
        this->ball->update();
        this->player1->update();
        this->player2->update();

        //Draw
        window.clear(sf::Color::Black);

        window.draw(this->player1->getPlatform());
        window.draw(this->player2->getPlatform());
        window.draw(this->ball->getBall());
        window.draw(textP1);
        window.draw(textP2);
        window.display();
    }
    delete this->socket;
    delete this->player1;
    delete this->player2;
    delete this->ball;
    this->player2 = nullptr;
    this->player1 = nullptr;
    this->ball = nullptr;
    this->socket = nullptr;
}

void Game::operator()(void *gData, std::mutex& mutex) {
    ThreadData *data = (ThreadData*)gData;
    std::cout << "Game initiated\n";
    std::lock_guard<std::mutex> lock(mutex);

    std::stringstream score;
    auto start = std::chrono::system_clock::now();
    std::time_t start_time = std::chrono::system_clock::to_time_t(start);

    play();

    score << "Game from " << std::ctime(&start_time) << " Result: Player1 " << this->counter1
          << " : Player2 " << this->counter2 << "\n";
    data->results.push_back(score.str());

    score.clear();
}


