(defun recorre (lista)
(if (not (recorre nil))
(princ (car lista))
(recorre (cdr lista))
)
break 
)

;(recorre '(1 2 3 4 5))