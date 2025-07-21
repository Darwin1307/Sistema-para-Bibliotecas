# Sistema para Bibliotecas

Base para Sistema de Registro para Bibliotecas, Incluye Api, Base de Datos en Sql y una interfaz gráfica sencilla.

## Requisitos Mínimos

 - PHP 7.2 o más, junto con los drivers PDO activados para usarse en un servidor web local.
 - MySQL 5.7 / MariaDB 10.0 o más.
 - Entorno para usar servidores locales web con Apache. (Preferiblemente XAMPP).

## Instalación

- Descargar los archivos "`api.php`","`ui.php`" y "`biblioteca.sql`" de la sección releases de este mismo repositorio o directo de: https://github.com/Darwin1307/Sistema-para-Bibliotecas/archive/refs/tags/1.0.0.zip

</br>

- Instalar Xampp o algún otro software parecido. Se puede instalar xampp desde el siguiente link: https://www.apachefriends.org/es/index.html
  
</br>

- Una vez instalado el programa poner los archivos "`api.php`","`ui.php`" y "`biblioteca.sql`" en la carpeta htdocs del programa xampp quedando de la siguiente forma:

</br>

<p align="center"><img width="700" height="500" alt="image" src="https://github.com/user-attachments/assets/178a0bef-92d8-4871-87cc-90f6a41858c9" /></p>

> [!NOTE]
> La ruta default donde comúnmente esta la carpeta htdocs es: C:\xampp\htdocs

</br>

- Luego de esto se debe hostear el server local desde Xampp iniciando apache y mysql desde el panel de control

<p align="center"><img width="700" height="500" alt="image" src="https://github.com/user-attachments/assets/444cce2f-4897-45aa-bfb9-c6aa1c510350" /></p>

</br>

</br>

- Desde aqui se debe abrir phpMyAdmin desde el navegador a través de la url 'http://localhost/phpmyadmin' e importar la base de datos del archivo "`biblioteca.sql`"

<p align="center"><img width="700" height="500" alt="image" src="https://github.com/user-attachments/assets/7fa58968-fa36-4f15-bba6-d6badfd80e30" /></p>

</br>

</br>

- Con la base de datos importada ya podemos ejecutar el sistema a partir de la url http://localhost/ui.php

<p align="center"><img width="700" height="500" alt="image" src="https://github.com/user-attachments/assets/44738dc6-a930-4cc4-8703-c18cc5d6ab3d" /></p>

## Características

Este proyecto contiene las siguientes características:

 - Pocos Archivos, por lo cual es fácil de instalar y modificar.
 - Código compacto, fácil de adaptar y mantener. 
 - Soporta variables POST como input (x-www-form-urlencoded)
 - Soporta JSON objects como input
 - Soporta JSON array como input (batch insert)
 - Soporta validación de input usando type rules y callbacks
 - Sistema de permisos para bases de datos, tablas, columnas y records
 - Soporte para la lectura de resultados combinados de multiples tablas
 - Soporte para busquedas en diferentes criterios.
 - Paginación, clasificación, y selección en listas y columnas.
 - Detección de relaciones con resultados anidados (belongsTo, hasMany and HABTM)
 - Soporte para campos binarios con encoding base64 
 - Mapeo de tablas y nombres de columnas para soportar sistemas heredados.
 - Soporte para autenticación via una llave API, un token JWT o clave/nombre de usuario
 - Soporte para leer la estructura de la base de datos en JSON
 - Soporte para modificar la estructure de la base de datos usando REST endpoint
 - Cumplimiento de estandares php (PSR): PSR-4, PSR-7, PSR-12, PSR-15 and PSR-17

## Configuración

Si se quiere adaptar el proyecto a otros sistemas, se deben editar las siguientes lineas de código al fondo  del archivo "`api.php`":


  `$config = new Config([
  
        'username' => 'xxx',
        
        'password' => 'xxx',
        
        'database' => 'xxx',
        
    ]);`


Estos son algunas de las opciones de configuración y sus valores default entre brackets:

- "driver": `mysql`, `pgsql`, `sqlsrv` o `sqlite` (`mysql`)
- "address": Hostname (o filename) del server de la base de datos (`localhost`)
- "port": Puerto TCP del server de la base de datos (default = driver default)
- "username": Nombre del usuario conectandose a la base de datos (default='root')
- "password": Contraseña del usuario conectandose a la base de datos (no default)
- "database": Base de datos a la que el usuario se va a conectar (no default)
- "command": Extra SQL para iniciar la conexión con la base de datos (none)
- "tables": Lista de tablas a mostrar, separado por comas (default='todas las tablas')
- "mapping": Lista de tablas/columnas a mapear, separado por comas (no mapping)

## Documentación Relacionada

 - Manual de Usuario de PHP: https://www.php.net/manual/es/
 - Manual de Usuario de JavaScript: https://developer.mozilla.org/en-US/docs/Web/JavaScript
 - Manual de Usuario de Apache: https://httpd.apache.org/docs/
 - Manual de Usuario para Sql: https://www.w3schools.com/sql/
