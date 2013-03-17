(defn is-multiple-of
	[n]
	#(zero? (mod % n)))

(def multiple-of-5?
	(is-multiple-of 5))

(def multiple-of-3?
	(is-multiple-of 3))

(defn multiple-of-3-or-5?
	[n]
	(or (multiple-of-3? n) (multiple-of-5? n)))

(defn solution-1
	[n]
 	(reduce + (filter multiple-of-3-or-5? (range n))))