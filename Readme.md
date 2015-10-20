UnitTestingPoint
================

Pruebas unitarias para la clase Punto

  * Ejemplos con distintos casos de prueba (test case)
  * Ejemplo de organización de directorios

Herramientas de desarrollo

  * Ejemplo de Rakefile
  * Ejemplo de depuración:

Para calcular el maximo comun divisor de dos números puede usar el siguiente algoritmo:


     def gcd(n, d):
        n1 = abs(n);
        n2 = abs(d)
        gcd = 1
        k = 1
        while k <= n1 and k <= n2:
            if n1 % k == 0 and n2 % k == 0:
                gcd = k
            k += 1
        return gcd


El fichero `gcd.rb` contiene una implementación en Ruby del máximo común divisor. 
Haciendo uso del depurador de ruby detecte el error en el código.

Para invocar al depurador, se ha de ejecutar: `ruby -rdebug gcd.rb`

Una vez dentro de mismo:

* Para pedir ayuda el comando es:
         `(rdb:1) help`

* Para listar el programa

<pre>
     (rdb:1) l
     [-4, 5] in gcd.rb
     => 1  def gcd(u, v)
     2    u, v = u.abs, v.abs
     3    while v == 0
     4      u, v = v, u % v
     5    end
</pre>

* Para ejecutar la siguiente sentencia:
         `(rdb:1) n`

* Para establecer un punto de ruptura (breakpoint):
         `(rdb:1) b 4`

* Para ver dónde se está:
         `(rdb:1) w`


