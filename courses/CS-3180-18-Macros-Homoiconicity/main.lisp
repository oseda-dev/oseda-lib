(let ((value '(2 3)))
    `(1 ,value 4)) ; (1 (2 3) 4)

(let ((value '(2 3)))
    `(1 ,@value 4)) ; (1 2 3 4)


(defmacro greet (name)
  `(format t "Hello, ~a!~%" ',name))

; (greet "Reese")

; (format t "Macro expanded to ~S~%"
;     (macroexpand-1 '(greet "Reese")))

; (defmacro with-logging (&body body)
;   `(progn
;      (format t "Starting code block...~%")
;      ,@body ; unpack body, so we don't execute as a list
;      (format t "Finished code block!~%")))

; (with-logging 
;     (let ((name "Reese"))
;         (format t "Hi ~S~%" name)))


; (defmacro my-when (test &body body)
;   `(if ,test
;        (progn
;          ,@body)))

; (let ((input (read)))
;     (my-when (eq input 'TRUE)
;         (format t "You entered true")))


(defmacro while (test &body body)
    `(if ,test
        (progn
            ,@body
            ; while expends body as list args
            ; so we still need an unpack
            (while ,test ,@body))
        nil)) ; when test fails, evaluate to nil ;-;

(let ((i 0))
    (while (< i 10)
        (format t "i was: ~S~%" i)
        (setf i (+ i 1))))