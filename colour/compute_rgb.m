% Load emission spectra
[lambda, L] = load_spectra( 'spec_1.csv' );

% Load colour matching functions
[lambda, XYZ_spec] = load_spectra( 'cie_xyz_1931.csv' );

% Color transform matrix:  RGB' = XYZ2RGB * XYZ'  - (XYZ') is a column
% vector
XYZ2RGB = [ 3.240479 -1.537150 -0.498535
            -0.969256 1.875992 0.041556
            0.055648 -0.204043 1.057311];


% Display a 100x100 rect of that the color, apply gamma to convert from
% linear to gamma corrected RGB
%imshow( repmat( reshape( RGB.^(1/2.2), [1 1 3] ), [100 100 1] ) )

