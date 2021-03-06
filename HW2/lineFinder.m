function line_detected_img = lineFinder(orig_img, hough_img, hough_threshold)
    [rows, columns] = size(orig_img);
    line_detected_img = zeros(rows, columns);
    for i = 1 : rows
        for j = 1: columns
            if hough_img(i, j) >= hough_threshold
                line_detected_img(i, j) = orig_img(i, j);
            end
        end
    end
    