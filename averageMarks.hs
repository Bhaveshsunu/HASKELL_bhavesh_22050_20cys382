type Student = (String, Int, [Int])

-- Function to calculate the average of a list of marks
averageMarks :: [Int] -> Double
averageMarks [] = 0
averageMarks marks = fromIntegral (sum marks) / fromIntegral (length marks)

-- Function to display all student names and their average marks
displayStudentAverages :: [Student] -> IO ()
displayStudentAverages [] = return ()
displayStudentAverages ((name, _, marks):students) = do
    let avg = averageMarks marks
    putStrLn (name ++ ": " ++ show avg)
    displayStudentAverages students
