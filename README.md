# IP-Tracker
[![GitHub top language](https://img.shields.io/github/languages/top/m4lal0/ipTracker?logo=gnu-bash&style=flat-square)](#)
[![GitHub repo size](https://img.shields.io/github/repo-size/m4lal0/ipTracker?logo=webpack&style=flat-square)](#)
[![Debian Supported](https://img.shields.io/badge/Debian-Supported-blue?style=flat-square&logo=debian)](#)
[![By](https://img.shields.io/badge/By-m4lal0-green?style=flat-square&logo=github)](#)

![IP-Tracker](./images/helpPanel.png)

Herramienta hecha en Bash para rastrear una IP pública, puede ser su propia IP o alguna otra dirección IP.

## Instalación & Uso
Para descargar la herramienta:
```sh
git clone https://github.com/m4lal0/ipTracker
cd ipTracker; chmod +x ipTracker.sh
```

Ejecute la herramienta sin opciones para obtener datos de su propia IP pública
```sh
./ipTracker.sh
```

## Rastrear otra IP
Para rastrear la información de otra dirección IP, usamos la opción **-i**:
```sh
./ipTracker.sh -i <IP-Address>
```

>La información mostrada por la herramienta son: IP, Pais, Ciudad, Region, Latitud, Longitud e ISP.