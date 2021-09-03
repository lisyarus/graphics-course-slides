# Как развернуть тестовый проект

1. [Установите CMake](https://cmake.org/install/) версии не меньше 3.12
    * Windows: скачайте [один из архивов](https://cmake.org/download/) под Windows (например, [версию 3.21.2 для x64](https://github.com/Kitware/CMake/releases/download/v3.21.2/cmake-3.21.2-windows-x86_64.zip)) и распакуйте куда-нибудь
    * Linux: поставьте пакет CMake из официальных репозиториев (`apt install cmake`, etc)
    * mac OS: скачайте [один из образов](https://cmake.org/download/) под macOS (например, [версию 3.21.2 для macOS 10.10](https://github.com/Kitware/CMake/releases/download/v3.21.2/cmake-3.21.2-macos10.10-universal.dmg)) и установите, или поставьте CMake через [Homebrew](https://brew.sh/) (`brew install cmake`)
2. Установите библиотеку GLEW
    * Windows: скачайте [архив](http://glew.sourceforge.net/) (Binaries	Windows 32-bit and 64-bit) и распакуйте куда-нибудь
    * Linux: поставьте пакет GLEW из официальных репозиториев (`apt install glew`, etc)
    * mac OS: поставьте GLEW через [Homebrew](https://brew.sh/) (`brew install glew`)
3. Установите [библиотеку SDL2](https://www.libsdl.org/download-2.0.php)
    * Windows: скачайте архив для соответствующей архитектуры (например, [версию 2.0.16 для x64](https://www.libsdl.org/release/SDL2-2.0.16-win32-x64.zip)) и распакуйте куда-нибудь
    * Linux: поставьте пакет SDL2 из официальных репозиториев (`apt install sdl2`, etc)
    * Скачайте образ под macOS (например, [версию 2.0.16](https://www.libsdl.org/release/SDL2-2.0.16.dmg)) и установите, или поставьте SDL2 через [Homebrew](https://brew.sh/) (`brew install sdl2`)
4. Скачайте [репозиторий с кодом для практического занятия](https://github.com/lisyarus/graphics-course/tree/master/code/practice1): `git pull https://github.com/lisyarus/graphics-course.git`
5. Соберите тестовый проект (`graphics-course/code/practice1`):
    * Windows:
        1. В директории с проектом создайте директорию сборки `<путь>/graphics-course/code/practice1/build`
        2. Откройте терминал (стандартный `cmd` или лучше PowerShell, Git Bash, Cygwin, или что-нибудь такое) и перейдите в директорию сборки
        3. Сконфигурируйте сборку, запустив CMake: 
           `cmake .. -G '<генератор>' -DGLEW_ROOT='<путь до библиотеки GLEW>' -DSDL2_ROOT='<путь до библиотеки SDL2>`, где
            * `<генератор>` - выбранный вами [CMake-генератор](https://cmake.org/cmake/help/latest/manual/cmake-generators.7.html), например `'Visual Studio 17 2022'`, если вы хотите сконфигурировать проект для работы с Visual Studio 17 2022 (полный список Visual Studio генераторов есть [здесь](https://cmake.org/cmake/help/latest/manual/cmake-generators.7.html#visual-studio-generators))
            * `'<путь до библиотеки GLEW>'` - путь до директории, куда вы распаковали библиотеку GLEW (в ней должны быть директории `doc`, `lib`, `include`, `bin` и файл `LICENSE.TXT`)
            * `'<путь до библиотеки SDL2>'` - путь до директории, куда вы распаковали библиотеку SDL2 (в ней должны быть директории `doc`, `include`, `lib` и несколько `.txt`-файлов)
        4. Соберите проект: `cmake --build .`
            * Этот и следующий пункты можно выполнить из Visual Studio, если вы использовали соответствующий генератор, для этого нужно открыть Visual Studio solution, сгенерированный в директории сборки
        5. Запустите собранный проект, должно появиться окно голубого цвета: `practice1`
    * Windows с помощью CMake-GUI:
        1. В директории с проектом создайте директорию сборки `<путь>/graphics-course/code/practice1/build`
        2. Запустите CMake-GUI (он идёт в стандартном коплекте с CMake, т.е. скорее всего уже у вас установлен)
        3. В качестве директории с исходным кодом (`Where is the source code:`) укажите путь до тестового проекта (`<путь>/graphics-course/code/practice1`)
        4. В качестве директории сборки (`Where to build the binaries:`) укажите путь до директории сборки (`<путь>/graphics-course/code/build`)
        5. Добавьте переменную `GLEW_ROOT` с путём до библиотеки GLEW:
            1. Нажмите `Add Entry`
            2. Введите имя `GLEW_ROOT`
            3. Выберите тип `PATH`
            4. Выберите соответствующий путь в (`Value`)
        6. Аналогично, добавьте переменную `SDL2_ROOT` с путём до библиотеки SDL2
        7. Нажмите `Configure`
        8. Нажмите `Generate`
        9. Дальнейшие действия совпадают с пунктами 4-5 в описании сборки под Windows
    * Linux/macOS:
        1. Убедитесь, что вы находитесь в директории с проектом (`graphics-course/code/practice1`)
        2. Создайте директорию сборки и перейдите в неё: `mkdir build && cd build`
        3. Сконфигурируйте сборку, запустив CMake: `cmake ..`
        4. Соберите проект: `cmake --build .`
        5. Запустите собранный проект, должно появиться окно голубого цвета: `./practice1`