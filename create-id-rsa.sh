#!/bin/bash
# Adding the private key (EN)
# Agregando la llave privada (ES)
printenv ID_RSA > ~/.ssh/id_rsa

cat ~/.ssh/id_rsa

# Permissions (EN)
# Permisos (ES)
chmod 600 ~/.ssh/known_hosts
chmod 600 ~/.ssh/id_rsa

# Check if github Works (EN)
# Chequear si funciona github (ES)
ssh -vT git@github.com

# Clone project and copy to the volume we need (EN)
# Clonar proyecto y copiar al volumen que necesitamos (ES)
git clone git@github.com:user/repo.git /src

# Leaving the machine active to be able to enter in case you integrate with other repositories is not necessary (EN)
# Dejar la máquina activa para poder ingresar en caso de que integres con otros repositorios no es necesario (ES)
tail -F anything
