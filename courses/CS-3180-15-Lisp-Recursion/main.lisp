(defun factorial (n)
  (if (<= n 1)
      1
      (* n (factorial (- n 1)))))


(defun get-penultimate (s)
    (let ((cur (car s)))
        (if (null (cdr (cdr s)))
            cur
            (get-penultimate (cdr s)))))



(defun parity (value)
  (labels ((is-even (x)
             (if (zerop x)
                 t
                 (is-odd (- x 1))))
           (is-odd (x)
             (if (zerop x)
                 nil
                 (is-even (- x 1)))))
    (if (is-even value)
        'even
        'odd)))

(format t "~S~%" (parity 9))


(format t "~S~%" 
  (flet ((double (value) 
         (* value 2))
       (square (value) 
         (* value value))
        (triple (value)
            (* value value value)))
  (triple (double (square 3)))))


; (format t "penultimate was ~S~%" (get-penultimate '(ALICE BOB CHARLIE DEREK ELI)))
; (format t "penultimate was ~S~%" (get-penultimate '(ALICE)))

; (format t "N! was ~S~%" (factorial 3))
