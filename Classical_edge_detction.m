function output = classical_edge_detection(img)
    % Convert to grayscale
    img_gray = rgb2gray(img);
    
    % Apply Gaussian filter to smooth the image
    img_filtered = imgaussfilt(img_gray, 1);
    
    % Perform Sobel edge detection
    output = edge(img_filtered, 'sobel');
end
