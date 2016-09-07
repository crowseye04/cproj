((c-mode
  (eval . (progn
	    (dolist (var '(company-clang-arguments company-c-headers-path-user))
	      (make-local-variable var))
	    (setq-local company-c-headers-path-user
			(mapcar #'(lambda (directory)
				    (let ((base-directory "%DIR_PATH%"))
				      (concat base-directory "/" directory))) '("build/debug" "src" "build/release"
										"src")))
	    (setq-local company-clang-arguments (mapcar #'(lambda (include-directory)
							    (concat "-I" include-directory))
							company-c-headers-path-user))))))
