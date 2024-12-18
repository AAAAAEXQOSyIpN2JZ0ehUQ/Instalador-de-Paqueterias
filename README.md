﻿![logo](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/Instalador-de-Paqueterias/blob/main/Imagenes/Instalador-de-Paqueterias.png)

# Instalador de Paqueterias :octocat: 
## :information_source: Descripción
Este es un instalador personalizado diseñado para automatizar la instalación de varias 
herramientas de desarrollo y utilidades en sistemas basados en Debian y Ubuntu. El script 
ofrece opciones para actualizar el sistema, realizar una actualización completa (full-upgrade), 
e instalar una serie de programas útiles como Pluma, ipinfo, Tor Browser, Gedit, Mousepad, LibreWolf y Sublime Text.

## :computer: Instalación
```bash
cd /opt
sudo rm -rf Instalador-de-Paqueterias
sudo git clone https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/Instalador-de-Paqueterias.git
sudo chmod +x Instalador-de-Paqueterias/*
cd Instalador-de-Paqueterias
ls -ltha
```

## :key: Acceso Directo
```bash
cd
echo "cd /opt/Instalador-de-Paqueterias && ./kptools.sh" > kptools
sudo chmod +x kptools
sudo mv kptools /usr/local/bin/
cd
```

## :computer: Instalación en una Línea
```bash
sudo wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/Instalador-de-Paqueterias/main/install.sh -O - | sudo bash && sudo rm -rf wget-log*
```

## :rocket: Modo de Uso

Ejecute el script simplemente ejecuta el siguiente comando `kptools`  en tu terminal y presiona Enter.

```bash
kptools
```

## :bookmark_tabs: Notas
Este script permite ejecutar varios comandos útiles para actualizar tu sistema y herramientas, incluyendo:

- Actualización del Sistema: Actualiza la lista de paquetes disponibles y actualiza los instalados.
- Full Upgrade: Realiza una actualización completa de todos los paquetes instalados en el sistema.

**Instalación de Herramientas**:

- Pluma: Editor de texto ligero para entornos de escritorio MATE.
- ipinfo: Herramienta CLI para obtener información detallada sobre IPs.
- Tor Browser: Navegador centrado en la privacidad y seguridad.
- Gedit: Editor de texto oficial del escritorio GNOME.
- Mousepad: Editor de texto ligero.
- LibreWolf: Navegador web centrado en la privacidad.
- Sublime Text: Editor de código multiplataforma.
- Entre otras herramientas.

## :star2: Características 

- Automatización Completa: Facilita la instalación de múltiples herramientas con un solo script.
- Instalación Personalizable: Puedes añadir o quitar herramientas según tus necesidades.
- Actualización del Sistema: Garantiza que tu sistema esté siempre al día antes de instalar nuevas herramientas.

## :hammer_and_wrench: Requisitos 

- Sistema Operativo: Linux (Debian/Ubuntu)
- Permisos: Debes ejecutar el script con permisos de root.
- Dependencias: apt, curl, gnupg, wget.

## :memo: Personalización

Puedes ajustar los comandos y configuraciones del script según tus necesidades modificando el archivo `/opt/Instalador-de-Paqueterias/kptools.sh`

## :open_file_folder: Estructura del Repositorio

| Icono            | Nombre              | Descripción                               |
|------------------|---------------------|-------------------------------------------|
| :file_folder:    | Imágenes            | Carpeta para imágenes del proyecto        |
| :file_folder:    | Install             | Carpeta para scripts de instalación       |
| :page_facing_up: | .gitattributes      | Archivo para configuración de Git         |
| :page_facing_up: | LICENSE             | Archivo de licencia del proyecto          |
| :book:           | README.md           | Archivo de documentación principal        |
| :package:        | install.sh          | Script de instalación automatizada        |
| :page_facing_up: | kptools.sh          | Herramienta de utilidades                 |

## :star2: Contribuciones

Las contribuciones son bienvenidas. Si tienes ideas para mejorar este script o encuentras algún problema, siéntete libre de abrir un *pull request* o *issue*.

## :warning: Advertencias

- Uso Responsable: Este script está diseñado para ser utilizado en dispositivos y redes que te pertenecen o para las que tienes permiso de uso. No lo utilices para actividades no autorizadas.

## :email: Contacto 
* :busts_in_silhouette: **Dzhoni**: [GitHub](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/Instalador-de-Paqueterias) - Desarrollador Instalador de Paqueterías 

☆ https://t.me/AAAAAEXQOSyIpN2JZ0ehUQ [  ⃘⃤꙰✰ ] ☆
