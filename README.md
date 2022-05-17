<p align="center">
    <img src="https://img.shields.io/badge/version-1.2.0-blue" />
</p>

# Docker-MySQL

A simple docker container for MySQL
<img src="https://img.shields.io/badge/MySQL-5.7-green" />

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes

### Prerequisites

What things you need

* [Git](https://git-scm.com/downloads)
* [Docker](https://www.docker.com/get-started/)

### Installation

Position yourself in your project folder
```
cd your-project
```

Clone
```
git clone https://github.com/nicolas-herbez/docker-mysql.git .
```

## How to use

### Start

Execute from root
```
docker-compose up -d --build
```

### Test with phpMyAdmin

Test it at this address
<a href="http://localhost:8080/" target="_blanc"><img src="https://img.shields.io/badge/localhost-8080-blue" /></a>

See [environment](https://github.com/nicolas-herbez/docker-mysql/blob/main/docker-compose.yaml) for login and password

### Stop

Execute from root
```
docker-compose down
```

## Versioning

We use [Semantic Versioning](http://semver.org/) for versioning

## Authors

[Nicolas Herbez](https://github.com/nicolas-herbez)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
