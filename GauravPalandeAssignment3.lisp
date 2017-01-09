;;;Program to calculate combination of range on given number of elements

;;;Funtion to check if inputs are valid
(defun check(no ra)
	(if (> ra no) ;If r>n
		(error-msg) ;Show error message
		(comb no ra) ;Call method to give number of combinations
	))

;;;Function to give number of combinations
(defun comb(numb rang)
	(/ (factorial numb) (* (factorial rang) (factorial (- numb rang))))) ;n!/(r!*(n-r)!)

;;;Function to give error message
(defun error-msg()
	(print "Cannot be calculated with r > n!") ;Error message
	(quit)) ;Quit the application due to error

;;;Function to retirieve factorial of a number
(defun factorial(number)
	(if (= number 1) ;If number = 1
		1 ;Then return value as 1 
		(* number (factorial (- number 1))))) ;else calculate n*((n-1)!)

;;;Function to gather input from user
(defun input()
	(format t "Enter a value for n:~%" )
	(defvar *n* (read)) ;Retrieve number of elements from user
	(format t "Enter a value for r:~%" )
	(defvar *r* (read)) ;Retrieve range from user
	(defvar *val* 0) ;Initiate value = 0
	(setf *val* (check *n* *r*)) ;Set val with return value of function check
	(if(> *val* 0) ;If there exists a combination
		(format t "There are ~a ~a-element subsets of a ~a-element set!~%" *val* *r* *n*))) ;Then display the answer

;;;Main Program
(input) ;Call input function