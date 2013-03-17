(defn is-rem-zero?
	[dividend divisor]
	(zero? (rem dividend divisor)))

(defn multiple-of-5?
	[n]
	(is-rem-zero? n 5))

(defn multiple-of-3?
	[n]
	(is-rem-zero? n 3))

(defn multiple-of-3-or-5?
	[n]
	(or (multiple-of-3? n) (multiple-of-5? n)))

(defn solution-1
	[n]
 	(reduce + (filter multiple-of-3-or-5? (range n))))