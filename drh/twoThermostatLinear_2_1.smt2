(set-logic QF_NRA_ODE)
(declare-fun x2 () Real [-20.000000, 100.000000])
(declare-fun x1 () Real [-20.000000, 100.000000])
(declare-fun x2_0_0 () Real [-20.000000, 100.000000])
(declare-fun x2_0_t () Real [-20.000000, 100.000000])
(declare-fun x2_1_0 () Real [-20.000000, 100.000000])
(declare-fun x2_1_t () Real [-20.000000, 100.000000])
(declare-fun x2_2_0 () Real [-20.000000, 100.000000])
(declare-fun x2_2_t () Real [-20.000000, 100.000000])
(declare-fun x1_0_0 () Real [-20.000000, 100.000000])
(declare-fun x1_0_t () Real [-20.000000, 100.000000])
(declare-fun x1_1_0 () Real [-20.000000, 100.000000])
(declare-fun x1_1_t () Real [-20.000000, 100.000000])
(declare-fun x1_2_0 () Real [-20.000000, 100.000000])
(declare-fun x1_2_t () Real [-20.000000, 100.000000])
(declare-fun time_0 () Real [0.000000, 30000.000000])
(declare-fun time_1 () Real [0.000000, 30000.000000])
(declare-fun time_2 () Real [0.000000, 30000.000000])
(declare-fun mode_0 () Real [1.000000, 4.000000])
(declare-fun mode_1 () Real [1.000000, 4.000000])
(declare-fun mode_2 () Real [1.000000, 4.000000])
(define-ode flow_1 ((= d/dt[x1] -0.40000000000000002) (= d/dt[x2] -0.59999999999999998)))
(define-ode flow_2 ((= d/dt[x1] -0.40000000000000002) (= d/dt[x2] 1)))
(define-ode flow_3 ((= d/dt[x1] 0.69999999999999996) (= d/dt[x2] -0.59999999999999998)))
(define-ode flow_4 ((= d/dt[x1] 0.69999999999999996) (= d/dt[x2] 1)))
(assert (and (or (and (= mode_2 4) (> x1_2_t 35)) (and (= mode_2 3) (> x1_2_t 35)) (and (= mode_2 2) (> x1_2_t 35)) (and (= mode_2 1) (> x1_2_t 35))) (and (<= x2_0_0 23.5) (>= x2_0_0 23) (<= x1_0_0 20.100000000000001) (>= x1_0_0 19.899999999999999)) (= mode_0 1) (or (and (= mode_1 4) (<= x2_0_t (/ (+ x1_0_t x2_0_t) 2)) (<= x1_0_t (/ (+ x1_0_t x2_0_t) 2)) (= x2_1_0 x2_0_t) (= x1_1_0 x1_0_t)) (and (= mode_1 3) (> x2_0_t (/ (+ x1_0_t x2_0_t) 2)) (<= x1_0_t (/ (+ x1_0_t x2_0_t) 2)) (= x2_1_0 x2_0_t) (= x1_1_0 x1_0_t)) (and (= mode_1 2) (<= x2_0_t (/ (+ x1_0_t x2_0_t) 2)) (> x1_0_t (/ (+ x1_0_t x2_0_t) 2)) (= x2_1_0 x2_0_t) (= x1_1_0 x1_0_t)) (and (= mode_1 1) (> x2_0_t (/ (+ x1_0_t x2_0_t) 2)) (> x1_0_t (/ (+ x1_0_t x2_0_t) 2)) (= x2_1_0 x2_0_t) (= x1_1_0 x1_0_t))) (= x2_0_t (+ x2_0_0 (* -0.59999999999999998 time_0))) (= x1_0_t (+ x1_0_0 (* -0.40000000000000002 time_0))) (= [x1_0_t x2_0_t] (integral 0. time_0 [x1_0_0 x2_0_0] flow_1)) (= mode_0 1) (forall_t 1 [0 time_0] (> x1_0_t 0)) (> x1_0_t 0) (> x1_0_0 0) (forall_t 1 [0 time_0] (> x2_0_t 0)) (> x2_0_t 0) (> x2_0_0 0) (or (and (= mode_2 4) (<= x2_1_t (/ (+ x1_1_t x2_1_t) 2)) (<= x1_1_t (/ (+ x1_1_t x2_1_t) 2)) (= x2_2_0 x2_1_t) (= x1_2_0 x1_1_t)) (and (= mode_2 3) (> x2_1_t (/ (+ x1_1_t x2_1_t) 2)) (<= x1_1_t (/ (+ x1_1_t x2_1_t) 2)) (= x2_2_0 x2_1_t) (= x1_2_0 x1_1_t)) (and (= mode_2 2) (<= x2_1_t (/ (+ x1_1_t x2_1_t) 2)) (> x1_1_t (/ (+ x1_1_t x2_1_t) 2)) (= x2_2_0 x2_1_t) (= x1_2_0 x1_1_t)) (and (= mode_2 1) (> x2_1_t (/ (+ x1_1_t x2_1_t) 2)) (> x1_1_t (/ (+ x1_1_t x2_1_t) 2)) (= x2_2_0 x2_1_t) (= x1_2_0 x1_1_t))) (= x2_1_t (+ x2_1_0 (* -0.59999999999999998 time_1))) (= x1_1_t (+ x1_1_0 (* -0.40000000000000002 time_1))) (= [x1_1_t x2_1_t] (integral 0. time_1 [x1_1_0 x2_1_0] flow_1)) (= mode_1 1) (forall_t 1 [0 time_1] (> x1_1_t 0)) (> x1_1_t 0) (> x1_1_0 0) (forall_t 1 [0 time_1] (> x2_1_t 0)) (> x2_1_t 0) (> x2_1_0 0) (= x2_2_t (+ x2_2_0 (* 1 time_2))) (= x1_2_t (+ x1_2_0 (* -0.40000000000000002 time_2))) (= [x1_2_t x2_2_t] (integral 0. time_2 [x1_2_0 x2_2_0] flow_2)) (= mode_2 2) (forall_t 2 [0 time_2] (> x1_2_t 0)) (> x1_2_t 0) (> x1_2_0 0) (forall_t 2 [0 time_2] (< x2_2_t 50)) (< x2_2_t 50) (< x2_2_0 50)))
(check-sat)
(exit)
