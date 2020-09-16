# Principal-Component-Analysis

An octave script to generate the principal components of the clockwork-angels. This is run for different choices of input parameters. The relevant ones are: 
- Number of patches (number_patches) chosen to be somewhat greater than 1000. The code checks for this and discards duplicates. We also present a result for 20000 patches;

- Patch size (patch) usually chosen to be 16 × 16 but can be increased (and we present a result for 24 × 24); 

- The number of eigenvectors (number_eig) chosen for the final display. This is usually 64 but we present a result with 256 eigenvectors; 

- The gap between the eigenvector images (scratch) for the final display usually set to 4. There are many possible criteria for deciding how much information is preserved. One of the best is the sum of the Frobenius norm errors of all reconstructed patches divided by the Frobenius norm of the patch. But, the ratio of the sum of chosen eigenvalues divided by the total sum of all eigenvalues is also reasonable, etc
