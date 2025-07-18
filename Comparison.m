clc; clear;

% Read input image
img = imread('input/sample_image.jpg');

% Classical Method Timing
tic;
out_classical = classical_edge_detection(img);
time_classical = toc;

% Quantum-Inspired Method Timing
tic;
out_quantum = quantum_inspired_edge_detection(img);
time_quantum = toc;

% Save outputs
imwrite(out_classical, 'results/classical_output.jpg');
imwrite(out_quantum, 'results/quantum_output.jpg');

% Compute PSNR
psnr_val = psnr(im2uint8(out_quantum), im2uint8(out_classical));

% Save timing and PSNR results
fid = fopen('results/psnr_timing_results.txt', 'w');
fprintf(fid, 'Timing Analysis:\n');
fprintf(fid, 'Classical Method: %.4f seconds\n', time_classical);
fprintf(fid, 'Quantum-Inspired Method: %.4f seconds\n', time_quantum);
fprintf(fid, '\nPSNR between outputs: %.2f dB\n', psnr_val);
fclose(fid);￼Enter
