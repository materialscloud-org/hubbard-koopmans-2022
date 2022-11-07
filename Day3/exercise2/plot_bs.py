#!/usr/bin/python3

from koopmans.io import read


wf = read('si.kwf')


# Extract the KI band structure from the last Unfold&Interpolate calculation
ki_bands = wf.calculations[-1].results['band structure']

# Extract the LDA band structure from the last PW bands calculation
pw_bands = [c.results['band structure'] for c in wf.calculations if c.prefix == 'bands'][0]

w90_calcs = [c for c in wf.calculations if c.prefix == 'wann']

# Extract the LDA band structure (valence) interpolated with Wannier90
w90_occ_bands = w90_calcs[-2].results['band structure']

# Extract the LDA band structure (conduction) interpolated with Wannier90
w90_emp_bands = w90_calcs[-1].results['band structure']

# Energy reference for the LDA bands
refpw = pw_bands.reference

# Energy reference for the KI bands
refcp = [c.results['homo_energy'] for c in wf.calculations if c.prefix == 'dft_init'][0]

ax = w90_occ_bands.subtract_reference(refpw).plot(color='red', label='LDA W90 interp')
ax = w90_emp_bands.subtract_reference(refpw).plot(ax=ax, color='red')
ax = pw_bands.subtract_reference(refpw).plot(ax=ax, ls='none', marker='o', markersize=3, color='blue', label='LDA explicit')
ki_bands.subtract_reference(refcp).plot(ax=ax, filename='bands.png', color='green', emin=-15, emax=10, label='KI', loc='upper left')
