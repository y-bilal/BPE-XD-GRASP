% =========================================================================
% BPE-XD-GRASP: GROG-facilitated Bunch Phase Encoding for 
% Extra-Dimensional Golden-angle RAdial Sparse Parallel (XD-GRASP) MRI
% =========================================================================
%
% DESCRIPTION:
% This code implements the BPE-XD-GRASP framework for respiratory motion 
% compensation in free-breathing Dynamic Contrast-Enhanced (DCE) MRI . 
% It leverages SC-GROG to perform one-to-many k-space synthesis (BPE), 
% populating the neighborhood of acquired GAR spokes with randomized points 
% to enhance mathematical redundancy and incoherence for motion-resolved 
% Compressed Sensing (CS) reconstruction . 
% Uniform binning has been used in this demo.
% The human liver perfusion dataset has been used
%
% ATTRIBUTION & ACKNOWLEDGMENT:
% This implementation is BASED ON the XD-GRASP framework developed by 
% Li Feng et al. [3, 4]. The base motion-resolved engine and 
% self-navigation logic follow the principles established in:
%
%   Li Feng, et al. "XD-GRASP: Golden-angle radial MRI with reconstruction 
%   of extra motion-state dimensions using compressed sensing." 
%   Magnetic Resonance in Medicine, 75(2), 775-788 (2016).
%
% MODIFICATIONS:
% This version has been EXTENSIVELY MODIFIED to incorporate:
%   1. GROG-facilitated Bunch Phase Encoding (BPE) synthesis.
%   2. Per-bin SC-GROG weight estimation to preserve motion fidelity .
%   3. Expanded data-consistency constraints in the NLCG solver.
%   4. Integration of both Uniform and Adaptive binning strategies .
%
% CITATION:
% If you use this code or the BPE-XD-GRASP framework, please cite:
%   
%   Y. Bilal, M. F. Siddiqui, I. Aslam,  H. Omer,"Enhanced Motion Compensation 
%   in Free-Breathing Dynamic Contrast-Enhanced MRI with 
%   GROG-facilitated Bunch Phase Encoding and Golden Angle Radial Sampling, 
%   Magnetic Resonance Imaging (2026)


% REQUIREMENTS:
% - MATLAB R2021a or later [15, 16]
% - NUFFT Toolbox
% - GPU with 'gpuArray' support (recommended for acceleration) [17]
%
% AUTHOR: [Yumna Bilal/Medical Image Processing Research Group (MIPRG), COMSATS University Islamabd ]
% Email:yumnabilal@gmail.com
% REPOSITORY: https://github.com/y-bilal/BPE-XD-GRASP [2]
% =========================================================================
