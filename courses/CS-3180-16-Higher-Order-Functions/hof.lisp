
; (defun my-map (list fn)
;     (labels ((my-map-inner (remaining)
;             ; when lets us handle nil recursive case easier
;             (when remaining
;                  (let ((new-value (fn (car remaining))))
;                     (cons new-value (my-map-inner (cdr remaining)))))))
;         (my-map-inner list)))

; (defun add-one (value)
;     (+ value 1))

; (format t "New List: ~S~%" (my-map '(1 2 3) add-one))

(defun my-map (list fn)
    (labels ((my-map-inner (remaining)
            ; when lets us handle nil recursive case easier
            (when remaining
                ; funcall -> look up in variable namespace
                (let ((new-value (funcall fn (car remaining))))
                    (cons new-value (my-map-inner (cdr remaining)))))))
        (my-map-inner list)))


; #' look up as function type
; (format t "New List: ~S~%" (my-map '(1 2 3) #'add-one))

(defun add-one (value)
    (+ value 1))

(defparameter *original-list* '(1 2 3))

(let 
    ((new-list 
    (mapcar #'(lambda (value) (+ 1 value)) *original-list*)))
        (format t "New list was: ~S~%" new-list))

