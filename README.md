# Instalación y despliegue de la bases de datos con Docker

## Requisitos:

### -Tener docker desktop instalado y abierto. 

-  Descargar 4.28.0 (139021) [aquí](https://www.docker.com/products/docker-desktop/)

- Guía de instalación: [guia](https://docs.docker.com/desktop/install/windows-install/)
-  Tener el puerto 3306 libre.

## Pasos:

1. Bajar el repositorio de github: 

```
$ git clone https://github.com/Sergioig37/Docker
```
2. Abrir un cmd y entrar en la carpeta de docker.
3. Construir el contenedor con la imagen: 
```
$ docker compose up
```   
Si quieres levantar el contenedor y seguir usando el mismo cmd:
```
$ docker compose up -d 
```
## Para pararlo y borrarlo: 
```
$ docker compose down
````
### Iniciar el contenedor el resto de veces: 
```
$ docker start mysql_propersell_db.
```  
### Parar el contenedor: 
```
$ docker stop mysql_propersell_db.
```    
    