(defun fibonacci (x)
  (if(< x 2)
  (fibonacci (x))
  (+ (fibonacci(- x 1))(fibonacci(- x 2)))
  )
)