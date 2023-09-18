(defun recorre (num)
(setf *milista* '(0 1 2 3 4 5))
(if
(equal 'num '(recorre ( milista)))T
(princ "Ese numero SI esta en la lista"))
(if
(equal 'num '(recorre ( milista))) nil)
(princ "Ese numero NO esta en la lista")
)

;(defun recorre (lista)
;(format t "~A-> ~%" (car lista)) ;format es para el salto de linea con el %
;(if lista
;(recorre (cdr lista))))