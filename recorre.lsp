(defun recorre (lista)
(format t "~A-> ~%" (car lista)) ;format es para el salto de linea con el %
(if lista
(recorre (cdr lista))
)
)

;(recorre '(1 2 3 4 5))