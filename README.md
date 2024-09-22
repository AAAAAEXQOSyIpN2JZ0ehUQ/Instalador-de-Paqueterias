![logo](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/Wifite-Utility/blob/main/Imagenes/Wifite-Utility.png)

# Wifite Utility :octocat: 
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
ls -lthas
```

## :key: Acceso Directo
```bash
cd
echo "cd /opt/Instalador-de-Paqueterias && sudo ./kptools.sh" > kptools
sudo chmod +x kptools
sudo mv kptools /usr/local/bin/
cd
```

## :computer: Instalación en una Línea
```bash
sudo wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/Instalador-de-Paqueterias/main/install.sh -O - | sudo bash
```

## :rocket: Modo de Uso

Ejecute el script simplemente ejecuta el siguiente comando `wifiteutility`  en tu terminal y presiona Enter.

```bash
wifiteutility
```

## :bookmark_tabs: Notas
Este script permite ejecutar varios comandos útiles para auditorías Wi-Fi, incluyendo:

- Instalar/Actualizar Wifite: El script se encarga de instalar o actualizar la última versión de Wifite, garantizando siempre el acceso a una de las herramientas más potentes para auditorías inalámbricas.
- Crear Diccionario Personalizado: El script permite generar un diccionario a partir de múltiples listas de palabras, optimizando su uso para ataques de fuerza bruta en auditorías.
- Instalar Herramientas Esenciales: El script gestiona la instalación de herramientas complementarias, como hcxdumptool, libpcap, y otras esenciales para auditorías Wi-Fi.
- Instalar Drivers Wi-Fi: El script facilita la instalación de drivers para adaptadores Wi-Fi, como rtl8814au, rtl88xxau, asegurando la compatibilidad con auditorías.
- Automatización Total: El script automatiza todo el proceso de instalación, eliminando la necesidad de realizar configuraciones manuales.
- Modularidad: El script te permite seleccionar qué herramientas deseas instalar, adaptándose a tus necesidades específicas.
- Soporte Extensivo de Drivers: El script garantiza la compatibilidad con una amplia gama de adaptadores Wi-Fi frecuentemente utilizados en pentesting.
- Instalar Pyrit: Instala o actualiza Pyrit para realizar ataques a redes inalámbricas utilizando la aceleración por GPU.

## :star2: Características 

- **Instalación simplificada de Wifite y herramientas esenciales**:
  - Actualiza o instala Wifite fácilmente con solo un par de clics.
  - Instalación de herramientas complementarias como hcxdumptool, hcxtools, libpcap, entre otras.

- **Creación automática de diccionarios personalizados**:
  - Combina varias listas de palabras preexistentes y genera un diccionario optimizado para pruebas de penetración.
  - Filtra palabras de longitud mínima para mayor efectividad en ataques de fuerza bruta.

- **Gestión de drivers de adaptadores Wi-Fi**:
  - Permite la instalación rápida de drivers para adaptadores como rtl8188eus, rtl8814au, rtl88xxau, entre otros.
  - Facilita la instalación de headers y otros módulos del kernel necesarios para la compilación de drivers.

- **Interfaz gráfica amigable**:
  - Incluye una GUI simple que facilita la navegación por las distintas opciones del script.
  - Banner personalizado que muestra información relevante sobre las herramientas utilizadas.

- **Personalización y mantenimiento de Pyrit**:
  - Instala o actualiza Pyrit, una potente herramienta para ataques a redes inalámbricas con GPU.
  - Incluye comandos de instalación y compilación de Pyrit directamente desde el código fuente.

## :hammer_and_wrench: Requisitos 

- Sistema Operativo: Linux/Unix
- Dependencias: Bash, Wifite, y otras herramientas de auditoría Wi-Fi.

## :memo: Personalización

Puedes ajustar los comandos y configuraciones del script según tus necesidades modificando el archivo `/opt/Wifite-Utility/wifite-utility.sh`

## :open_file_folder: Estructura del Repositorio

| Icono            | Nombre              | Descripción                               |
|------------------|---------------------|-------------------------------------------|
| :file_folder:    | imágenes            | Carpeta para imágenes                     |
| :page_facing_up: | .gitattributes      | Archivo para configuración de Git         |
| :page_facing_up: | LICENSE             | Archivo de licencia                       |
| :book:           | README.md           | Archivo de documentación principal        |
| :page_facing_up: | Wifite-Utility.sh   | Script principal de utilidad Wifite       |
| :package:        | install.sh          | Script de instalación                     |
| :page_facing_up: | wifite_help_ES.sh   | Archivo de ayuda en español para Wifite   |
| :page_facing_up: | wifite_help_ES.txt  | Archivo de ayuda en español para Wifite   |

## :email: Contacto 
* :busts_in_silhouette: **derv82**: [GitHub](https://github.com/derv82/wifite) - Desarrollador  Wifite
* :busts_in_silhouette: **kimocoder**: [GitHub](https://github.com/kimocoder/wifite2) - Actualización de versión Wifite
* :busts_in_silhouette: **Dzhoni_dev**: [GitHub](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/Wifite-Utility) - Colaborador

☆ https://t.me/AAAAAEXQOSyIpN2JZ0ehUQ [  ⃘⃤꙰✰ ] ☆
