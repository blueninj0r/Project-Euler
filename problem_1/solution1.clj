(defn solution-1
	[n]
 	(reduce + (filter multiple-of-3-or-5? (range n))))

(defn multiple-of-5?
	[n]
	(isremzero? n 5))

(defn multiple-of-3?
	[n]
	(isremzero? n 3))

(defn multiple-of-3-or-5?
	[n]
	(or (multiple-of-3? n) (multiple-of-5? n)))

(defn is-rem-zero?
	[dividend divisor]
	(zero? (rem dividend divisor)))