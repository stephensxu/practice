def rectangle_intersection(rect1, rect2)
  leftcorner_x  = [rect1[0][0], rect2[0][0]].max
  leftcorner_y  = [rect1[0][1], rect2[0][1]].max
  rightcorner_x = [rect1[1][0], rect2[1][0]].min
  rightcorner_y = [rect1[1][1], rect2[1][1]].min
  return nil if (leftcorner_x > rightcorner_x) || (leftcorner_y > rightcorner_y)
  return [[leftcorner_x, leftcorner_y],[rightcorner_x, rightcorner_y]]
end

print rectangle_intersection(
 [[0, 0], [2, 1]],
 [[1, 0], [3, 1]]
    )