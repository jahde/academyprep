def rec_intersection(rect1, rect2)
	aL1 = rect1[0][0]
	bL1 = rect2[0][0]
	zL1 = [aL1,bL1].max

	aL2 = rect1[0][1]
	bL2 = rect2[0][1]
	zL2 = [aL2,bL2].max

	aR1 = rect1[1][0]
	bR1 = rect2[1][0]
	zR1 = [aR1,bR1].min

	aR2 = rect1[1][1]
	bR2 = rect2[1][1]
	zR2 = [aR2,bR2].min

	unless ((aL1..aR1).include?(bL1) || (aL2..aR2).include?(bR2)) ||  ((aL2..aR2).include?(bL2) || (aL2..aR2).include?(bR2)) || ((bL1..bR1).include?(aL1) || (bL2..bR2).include?(aR2)) ||  ((bL2..bR2).include?(aL2) || (bL2..bR2).include?(aR2))
		return nil
	else
		return [[zL1,zL2], [zR1,zR2]]
	end
end
