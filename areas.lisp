(defun areacir()
(write "AREA DEL CIRCULO")
(princ "Dame el numero de la medida del radio: ")
(setq num1 (read))
(setq resultado (* 3.1416(* num1 num1)))
(write resultado)
)

(defun areatria()
(write "AREA DEL TRIANGULO")
(princ "Dame el numero de la medida de la base: ")
(setq num1 (read))
(princ "Dame el numero de la medida de la altura: ")
(setq num2 (read))
(setq resultado (/ (* num1 num2) 2))
(write resultado)
)

(defun areacua()
(write "AREA DEL CUADRADO: ")
(princ "Dame el numero de la medida del lado: ")
(setq num1 (read))
(setq resultado (* num1 num1))
(write resultado)
)

(defun arearec()
(write "AREA DEL RECTANGULO")
(princ "Dame el numero de la medida del ancho: ")
(setq num1 (read))
(princ "Dame el numero de la medida del largo: ")
(setq num2 (read))
(setq resultado (* num1 num2))
(write resultado)
)

(defun arearoboi()
(write "AREA DEL RONBOIDE")
(princ "Dame el numero de la medida de la base: ")
(setq num1 (read))
(princ "Dame el numero de la medida de la altura: ")
(setq num2 (read))
(setq resultado (* num1 num2))
(write resultado)
)