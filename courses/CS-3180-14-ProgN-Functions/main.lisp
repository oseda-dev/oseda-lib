; (progn 
;     (format t "What is your name?~%")
;     (finish-output)
;     (defparameter *name* (read-line)))


; (defun square (value)
;     (format t "squaring value...~%")
;     (* value value))

; (defun my-sqrt (value)
;     (unless (< value 0)
;         (print "square rooting number...~%")
;         (sqrt value)))

; (format t "Value was: ~S~%" (my-sqrt 5))
; (format t "Value was: ~S~%" (my-sqrt -5))

; (defun main () 
;     (format t "Hello world~%")
;     (format t "4 squared is ~S~%" (square 4)))


; (main)

(defun get-letter-grade (score)
    (cond 
        ((>= score 90) (format t "Excellent~%")   "A")
        ((>= score 80) (format t "Good Job~%")    "B")
        ((>= score 70) (format t "...~%")         "C")
        (t             (format t ":(~%")          "F")))

(defun main ()
    (let ((grade (get-letter-grade 97))
          (name "Bob"))
        (format t "Hi ~S~%" name)
        (format t "You got the following grade: ~S~%" grade)))

(main)


(defun abs-square (value)
    (when (< value 0)
        (setq value (abs value)))
    (* value value))

(format t "Value was: ~S~%" (abs-square -5))
(format t "Value was: ~S~%" (abs-square -3))
(format t "Value was: ~S~%" (abs-square 2))