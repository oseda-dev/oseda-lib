; (format t "~S~%" 
;     (* (+ 1 3) 4))
; (let (LIST OF BINDINGS) (progn SCOPE OF THOSE BIND))

(format t "the entire let was ~S~%" 
    (let* ((name1 "Reese") (name2 name1))
        (format t "hello ~S~%" name1)
        (format t "hello ~S~%" name2)
        name1))


(defun foo (value)
    (format t "value was ~S~%" value)
    (foo (- value 1)))

; (foo 3)

(format t "cons cell was ~S~%" (cons 'ALICE '(BOB)))
(format t "cons cell was ~S~%" '(ALICE BOB))
(format t "cons cell was ~S~%" '(ALICE BOB nil))

