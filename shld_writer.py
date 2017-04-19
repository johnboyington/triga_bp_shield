#this code will write mcnp input files for shields of different materials while varying lengths

import numpy as np
import matplotlib.pyplot as plt
import os

try:
    os.mkdir('/home/john/small_projects/triga_bp_shield/writer/output')
except OSError,e:
    print e

#numbering
#  1 Air      2 Borated Polyethylene
#  3 Aluminum 4 Lead
#  5 Tungsten 6 Cadmium
#  n neutron  p photon

def density(material):
    if (material == 1): return 0.001293
    if (material == 2): return 1.000
    if (material == 3): return 2.699
    if (material == 4): return 11.34
    if (material == 5): return 19.3
    if (material == 6): return 8.65

def label(material):
    if (material == 1): return 'Air'
    if (material == 2): return 'Borated Polyethylene'
    if (material == 3): return 'Aluminum'
    if (material == 4): return 'Lead'
    if (material == 5): return 'Tungsten'
    if (material == 6): return 'Cadmium'

def abrev(material):
    if (material == 1): return 'air'
    if (material == 2): return 'bp'
    if (material == 3): return 'al'
    if (material == 4): return 'pb'
    if (material == 5): return 'w'
    if (material == 6): return 'cd'

def Block1(material, density, label):
    H = ''
    H += 'c  *********************************************************\n'
    H += 'c                           BLOCK 1\n'
    H += 'c  *********************************************************\n'
    H += '11 1 -0.001239  11 -12     -21            $ NEBP Cavity\n'
    H += '12 2 -1.0       11 -12  21 -22            $ Borated Poly Collimator\n'
    H += '13 3 -2.699     11 -12  22 -23            $ NEBP Aluminum Case\n'
    H += 'c \n'
    H += '21 {} -{}     -31                        ${} Brick\n'.format(material, density, label)
    H += 'c \n'
    H += '31 1 -0.001239  41 -32     -21        $ Detector Cell\n'
    H += 'c \n'
    H += '90 1 -0.001239 -32 #11 #12 #13 #21 #31    $ Problem Space\n'
    H += '99 0            32                        $ Graveyard (RIP IN PEACE)\n'
    H += '\n'
    return H

def Block2(dist, label):
    H = ''
    H += 'c  *********************************************************\n'
    H += 'c                           BLOCK 2\n'
    H += 'c  *********************************************************\n'
    H += 'c  _____Problem Planes\n'
    H += '11  PX  -36.015          $ Collimator Front Plane\n'
    H += '12  PX   -0.0001         $ Collimator Back Plane\n'
    H += 'c  _____Cylinders\n'
    H += '21  CX   1.27            $ Cavity Cylinder\n'
    H += '22  CX   7.62            $ Borated Poly Cylinder\n'
    H += '23  CX   8.255           $ Aluminum Case Cylinder\n'
    H += 'c  _____Rectangular Parallelepiped\n'
    H += '31  RPP     0.0001  {}      -10   10      -10  10    $ {} Brick\n'.format(dist + 0.0001, label)
    H += '32  RPP    -40 101             -11   11      -11  11    $ Problem Space\n'
    H += 'c  _____Detector Planes\n'
    H += '41  PX    {}         $ Detector Front Plane\n'.format(dist + 0.00011)
    H += '\n'
    return H

def Block3(particle, nps):
    H = ''
    H += 'c  *********************************************************\n'
    H += 'c                           BLOCK 3\n'
    H += 'c  *********************************************************\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c                   PROBLEM SPECIFICATIONS\n'
    H += 'c  ---------------------------------------------------------\n'
    if particle == 'n': H += 'MODE n p\n'
    if particle == 'p': H += 'MODE p\n'
    H += 'NPS {}\n'.format(nps)
    H += 'PRINT 110\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c                        IMPORTANCES\n'
    H += 'c  ---------------------------------------------------------\n'
    if particle == 'n': H += 'IMP:n 1 1 1 1 1 1 0\n'
    if particle == 'n' or particle == 'p': H += 'IMP:p 1 1 1 1 1 1 0\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c                      MATERIAL CARDS\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c \n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c  MATERIAL 1:      AIR  \n'
    H += 'c  ------------------------(density 0.001293 g/cm^3)--------\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'M1    7014 -0.7558\n'
    H += '      8016 -0.2314\n'
    H += '     18040 -0.0128\n'
    H += 'c \n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c  MATERIAL 2:      BORATED POLYETHYLENE\n'
    H += 'c  ---------------------------(density 1.000 g/cm^3)--------\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'M2     1001     -0.125355\n'
    H += '       5010.70c -0.100000\n'
    H += '       6000     -0.774645\n'
    H += 'c \n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c  MATERIAL 3:      ALUMINUM \n'
    H += 'c  ---------------------------(density 2.699 g/cm^3)--------\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'M3    13027.70c -1.0\n'
    H += 'c \n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c  MATERIAL 4:      LEAD  \n'
    H += 'c  ---------------------------(density 11.34 g/cm^3)--------\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'M4   82207.70c   -1.0\n'
    H += 'c \n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c  MATERIAL 5:      TUNGSTEN   \n'
    H += 'c  ---------------------------(density 19.3 g/cm^3)---------\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'M5   074184   -1.0\n'
    H += 'c \n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'c  MATERIAL 6:      CADMIUM\n'
    H += 'c  ---------------------------(density 8.65 g/cm^3)---------\n'
    H += 'c  ---------------------------------------------------------\n'
    H += 'M6   048112   -1.0\n'
    H += 'c \n'
    return H

def Source(particle):
    H = ''
    if particle == 'n':
        H = open('nsource.txt', 'r').read()
    if particle == 'p':
        H = open('psource.txt', 'r').read()
    return H

def Tally(particle):
    H = ''
    H += 'c  ---------------------------------------------------------\n'
    H += 'c                       TALLY CARDS\n'
    H += 'c  ---------------------------------------------------------\n'
    if particle == 'n':
        H += 'F11:n 41\n'
        H += 'FS11  21\n'
        H += 'E11   0.0 0.5 20\n'
    H += 'F21:p 41\n'
    H += 'FS21  21\n'
    if particle == 'n':
        H += 'F31:n 41\n'
        H += 'FS31  21\n'
        H += 'E31    1.00000000e-05   1.50000000e-02   3.00000000e-02   5.00000000e-02\n'
        H += '       8.00000000e-02   1.00000000e-01   1.40000000e-01   1.80000000e-01\n'
        H += '       2.50000000e-01   3.20000000e-01   4.00000000e-01   6.25000000e-01\n'
        H += '       8.50000000e-01   9.50000000e-01   9.72000000e-01   1.02000000e+00\n'
        H += '       1.09700000e+00   1.15000000e+00   1.30000000e+00   2.10000000e+00\n'
        H += '       2.60000000e+00   3.30000000e+00   4.00000000e+00   9.87700000e+00\n'
        H += '       1.59680000e+01   4.80520000e+01   1.48729000e+02   9.11800000e+03\n'
        H += '       4.08500000e+04   5.00000000e+05   1.35300000e+06   3.67900000e+06\n'
        H += '       1.00000000e+07\n'
    H += 'F41:p 41\n'
    H += 'FS41  21\n'
    H += 'E41    1.00000000e-05   1.50000000e-02   3.00000000e-02   5.00000000e-02\n'
    H += '       8.00000000e-02   1.00000000e-01   1.40000000e-01   1.80000000e-01\n'
    H += '       2.50000000e-01   3.20000000e-01   4.00000000e-01   6.25000000e-01\n'
    H += '       8.50000000e-01   9.50000000e-01   9.72000000e-01   1.02000000e+00\n'
    H += '       1.09700000e+00   1.15000000e+00   1.30000000e+00   2.10000000e+00\n'
    H += '       2.60000000e+00   3.30000000e+00   4.00000000e+00   9.87700000e+00\n'
    H += '       1.59680000e+01   4.80520000e+01   1.48729000e+02   9.11800000e+03\n'
    H += '       4.08500000e+04   5.00000000e+05   1.35300000e+06   3.67900000e+06\n'
    H += '       1.00000000e+07\n'
    H += '\n'
    return H

def Name(abrev, particle, distance):
    N = '{}{}{}.i'.format(abrev, particle, distance)
    return N

def npsCalc(dd):
    N = dd * 1.5E6
    N = int(N)
    return N


#here you'll input all of the parameter you want to create the input files you need

part = ['n', 'p']
mate = [1, 2, 3, 4, 5, 6]
dist = [1, 2, 3, 4, 6, 8, 10, 15, 20, 25, 30]
nps = int(5E6)

for par in part:
    for mat in mate:
        for dis in dist:            
            den = density(mat)
            abr = abrev(mat)
            lab = label(mat)
            s = ''
            s += 'TRIGA BEAMPORT {} Shield, Thickness {}, {}\n'.format(lab, dis, par)
            s += Block1(mat, den, lab)
            s += Block2(dis, lab)
            s += Block3(par, npsCalc(dis))
            s += Source(par)
            s += Tally(par)
            
            name = Name(abr, par, dis)
            with open('/home/john/small_projects/triga_bp_shield/writer/output/{}'.format(name), 'w') as H:
                H.write(s)