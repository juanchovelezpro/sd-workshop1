# sd-workshop1

## En este workshop se pedía lo siguiente:

1. Scraping Icesi
2. Hostname, IP, Timestamp, Memory RAM Free.

## Bonus
- IP dinámica.

Para resolver el punto 1 se realizó lo siguiente:

Primero se instala wget en las máquinas:

`sudo yum install -y wget`

Debemos acceder al directorio /var/www/html para guardar el index.html de ICESI.

`cd /var/www/html`

Con esto ya podemos hacer scraping a la página de ICESI y se guarda en el directorio /var/www/html.

`wget www.icesi.edu.co`

Luego se instala httpd que nos permite que nuestra máquina sea un servidor web.

Para más información de como se configura todo el server, se encuentra en el script [server.sh](https://github.com/juanchovelezpro/sd-workshop1/blob/master/server.sh "server.sh")

Para el punto 2 las instrucciones se estipulan en el archivo [script.sh](https://github.com/juanchovelezpro/sd-workshop1/blob/master/script.sh "script.sh")

Finalmente para el bonus, se coloca el atributo **type: "dhcp"**  en la configuración de la network. 

`config.vm.network "public_network", type:"dhcp"`