# Azure Infrastructure Setup

Este repositorio está diseñado para levantar una infraestructura en **Azure** con la flexibilidad de crear entornos como **development (dev)**, **production (prod)** y **staging**. La infraestructura está organizada por módulos, lo que permite gestionar cada ambiente de manera independiente y reutilizable.

## Estructura del Repositorio

- **.github**:
  - `deploy-dev.yml`: Workflow de GitHub para el despliegue en el entorno de desarrollo.
  - `destroy-dev.yml`: Workflow de GitHub para la destrucción manual de la infraestructura en el entorno de desarrollo.
  
- **env/dev**:
  - `containers/`: Configuración de contenedores específicos del entorno de desarrollo.
  - `keys/`: Carpeta donde se deben crear las llaves **SSH** (esta carpeta debe crearse manualmente).
  - `main.tf`: Archivo principal para la configuración de la infraestructura en dev.
  - `providers.tf`: Proveedores para el entorno de desarrollo.
  - `variables.tf`: Variables utilizadas en el entorno de desarrollo.
  
- **modules/vm**:
  - `script/docker-install.tcp`: Script que contiene todo lo necesario para la instalación de **Docker**.
  - `main.tf`: Definición de la máquina virtual.
  - `outputs.tf`: Definición de las salidas del módulo de la máquina virtual.
  - `providers.tf`: Proveedores específicos del módulo.
  - `variables.tf`: Variables utilizadas en el módulo de la máquina virtual.

## GitHub Workflows

Este repositorio cuenta con **GitHub Workflows** automatizados que facilitan el despliegue y la destrucción de la infraestructura en Azure:

- **Despliegue Automático**: Con cada **commit** en los entornos configurados (por ejemplo, en `main` o `dev`), el workflow se encargará de realizar el despliegue automático de la infraestructura en Azure.
  
- **Destrucción Manual**: Se puede realizar la destrucción de la infraestructura de manera manual, ejecutando un workflow específico diseñado para este propósito.

Los workflows están definidos en el directorio `.github/workflows/` y están diseñados para garantizar que el ciclo de vida de la infraestructura sea manejado de manera eficiente y segura.

## Requisitos

- **Azure CLI** instalado.
- Configuración de claves **SSH**.
- Configuración de **GitHub Actions** con los permisos y secretos necesarios para interactuar con Azure.

## Despliegue

Cada módulo puede ser desplegado de forma individual o conjunta para levantar la infraestructura de uno o varios ambientes (dev, prod, staging). Los comandos necesarios para desplegar la infraestructura se incluyen en los archivos `main.tf` de cada ambiente.