1. Введение
	1. Разделы компьютерной графики
	2. О чём этот курс
	3. История и современное состояние графических API
	4. Подробнее про OpenGL: версии, реализации, профили, GLES, WebGL, GLSC
	5. Вспомогательные библиотеки: glew, glfw, sdl2, imgui
	6. Полезные ресурсы: www.khronos.org/opengl/wiki, docs.gl, learnopengl.com, GPU Gems, SIGGRAPH
	7. Vsync, frame pacing
	Практика: рисуем треугольник на OpenGL и C++
2. Конвейер, проекции, шейдеры
	1. Однородные координаты, матрицы аффинных преобразований
	2. Проективное пространство, ортографическая и перспективная проекции
	3. Преобразования из мировых координат в экранные и обратно, object picking
	4. Графический конвейер
	5. Шейдеры, uniform'ы
	6. Тест глубины
	Практика: рисуем вращающийся разноцветный куб в перспективе
3. Основы рендеринга в OpenGL
	1. Вершинные буферы
	2. Аттрибуты вершин: типы, interleaved/separate, дубликация вершин
	3. VAO
	4. Индексированный рендеринг, индексный буффер
	5. Форматы файлов 3D моделей: wavefront obj, COLLADA, glTF
	Практика: рисуем вращающуюся сферу
4. Основы рендеринга в OpenGL, часть 2
	1. Подробнее про тест глубины
	2. Stencil buffer
	3. Face culling
	4. Полупрозрачность, blending, два слова об order-independent transparency
	5. Instanced рендеринг, vertex attribute divisor
	Практика: рисуем много полупрозрачных летающих сфер используя instancing
5. Текстуры
	1. Виды текстур: 1D/2D/3D, cubemap, array
	2. Создание и загрузка текстур, pixel pack/unpack
	3. Использование текстур в шейдере, samplers
	5. Фильтрация текстур, tricubic interpolation
	6. Mipmaps, проблемы glGenerateMipmap
	7. Анизотропная фильтрация
	8. Выбор mipmap, dFdx/dFdy
	9. Форматы изображений, libpng, libjpeg, stb_image
	10. Сжатые текстуры
	Практика: рисуем текстурированные сферу и куб
	Пререквезиты: текстуры сферы и куба
6. Освещение
	1. Модели освещения: Gouraud, Phong, Blinn-Phong
	2. Directional light
	3. Point light
	4. Spot light
	5. Area light
	6. Baked lighting
	7. Normal mapping, bump mapping, material mapping, environment mapping
	Практика: рисуем мокрую мощёную дорогу
	Пререквезиты: diffuse map, specular map, bump map
7. Offscreen rendering, эффекты
	1. Framebuffer
	2. Renderbuffer
	3. glDrawBuffer/glDrawBuffers
	4. Гауссово размытие
	5. Bloom
	6. Depth of field
	Практика: рисуем bloom
7. Тени
	1. Shadow volumes
	2. Геометрический шейдер
	3. Shadow mapping: directional/spot light
	4. Shadow mapping: point light (cubemap)
	5. Shadow samplers
	6. Cascaded shadow maps
	7. Soft shadows: PCF, ESM, VSM, CSM
	8. Тени от ландшафта в Ведьмаке 3
	Практика: реализуем shadow mapping для directional источника света
8. Deferred shading
	1. Мотивация
	2. G-buffer, multiple outputs во фрагментном шейдере
	3. Compute shaders
	4. Tiled shading
	5. Clustered shading
	Практика: реализуем deferred shading
9. Ещё о пост-обработке
	1. Anti-aliacing: FSAA/SSAA, MSAA, FXAA
	2. Гамма-коррекция
	3. HDR
	4. Dithering
	5. SSAO
	6. Edge detection, Sobel filter
	Практика: реализуем что-нибудь из этого
	Пререквезиты: ???
10. Оптимизация
	1. Типичные bottleneck'и:
		1. Количество OpenGL-вызовов
		2. Количество изменений состояния
		3. Количество вершин
		4. Сложность вершинного шейдера
		5. Количество фрагментов (fill-rate)
		6. Сложность фрагментного шейдера
	2. Batching
	3. Сжатие вершин
	4. LOD
	5. Frustum culling, SAT, BSP
	Практика: рисуем много моделей с LOD и frustum culling, меряем производительность
	Пререквезиты: модель с несколькими LOD
11. Occlusion culling
	1. Occlusion query
	2. Простой occlusion culling с появлением на следующем кадре
	3. Снова compute shaders
	4. Indirect drawing
	5. Hierarchical-Z occlusion culling
	Практика: реализуем occlusion culling, меряем производительность
	Пререквезиты: модель
12. Рендеринг текста
	1. О тексте и шейпинге: кодировки, шрифты, глифы, лигатуры, направление текста
	2. Библиотеки: harfbuzz, freetype
	3. Растровые шрифты
	4. Векторные шрифты
	5. SDF шрифты
	Практика: рисуем текст SDF-шрифтом
	Пререквезиты: SDF-шрифт
13. Volume rendering
	1. Представление данных: явная функция vs 3D текстура
	2. Интерполяция: trilinear vs tricubic
	3. Изоповерхности: marching cubes/tetrahedra, dual contouring
	4. Уравнение рендеринга, освещение
	5. Slicing
	6. Ray tracing
	Практика: рисуем облако/дым
	Пререквезиты: возможно, готовый density map
14. Photorealistic/physically-based rendering
	1. Ещё раз о PBR
	2. Rendering equation
	3. Материалы: diffuse, glossy, тени, прозрачность, преломление
	4. Radiosity
	5. Ray tracing, "Ray tracing in One Weekend" series
	Практика: пишем рейтрейсер
15. Анимации
	1. Keyframe animation
	2. Интерполяция
	3. Skeletal animation
	4. Inverse kinematics
	5. Physics-based animation
	Практика: рисуем анимированную модель
	Пререквезиты: анимированная модель
