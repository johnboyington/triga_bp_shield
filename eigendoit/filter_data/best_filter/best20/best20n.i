TRIGA BEAMPORT 1122221222 Shield, Thickness 10
c  *********************************************************
c                           BLOCK 1
c  *********************************************************
11 1 -0.001239  11 -12     -21            $ NEBP Cavity
12 2 -1.0       11 -12  21 -22            $ Borated Poly Collimator
13 3 -2.699     11 -12  22 -23            $ NEBP Aluminum Case
c 
200 1 -1.0 120 -121 122 -123 12 -131  $ Brick of bp
201 1 -1.0 120 -121 122 -123 131 -132  $ Brick of bp
202 2 -11.34 120 -121 122 -123 132 -133  $ Brick of pb
203 2 -11.34 120 -121 122 -123 133 -134  $ Brick of pb
204 2 -11.34 120 -121 122 -123 134 -135  $ Brick of pb
205 2 -11.34 120 -121 122 -123 135 -136  $ Brick of pb
206 1 -1.0 120 -121 122 -123 136 -137  $ Brick of bp
207 2 -11.34 120 -121 122 -123 137 -138  $ Brick of pb
208 2 -11.34 120 -121 122 -123 138 -139  $ Brick of pb
209 2 -11.34 120 -121 122 -123 139 -140  $ Brick of pb
c 
31 1 -0.001239  41 -32     -21        $ Detector Cell
c Define Problem space cell
90 1 -0.001239 -32 #11 #12 #13 (-12:-120:121:-122:123:140) #31
99 0            32                        $ Graveyard (RIP IN PEACE)

c  *********************************************************
c                           BLOCK 2
c  *********************************************************
c  _____Problem Planes
11  PX  -36.015          $ Collimator Front Plane
12  PX   0               $ Collimator Back Plane
c  _____Cylinders
21  CX   1.27            $ Cavity Cylinder
22  CX   7.62            $ Borated Poly Cylinder
23  CX   8.255           $ Aluminum Case Cylinder
c  _____Rectangular Parallelepiped
120 PZ -10
121 PZ 10
122 PY -10
123 PY 10
131 PX 2.0001 $ Brick of bp
132 PX 4.0001 $ Brick of bp
133 PX 6.0001 $ Brick of pb
134 PX 8.0001 $ Brick of pb
135 PX 10.0001 $ Brick of pb
136 PX 12.0001 $ Brick of pb
137 PX 14.0001 $ Brick of bp
138 PX 16.0001 $ Brick of pb
139 PX 18.0001 $ Brick of pb
140 PX 20.0001 $ Brick of pb
32  RPP    -40 101             -11   11      -11  11    $ Problem Space
c  _____Detector Planes
41 PX 20.0002

c  *********************************************************
c                           BLOCK 3
c  *********************************************************
c  ---------------------------------------------------------
c                   PROBLEM SPECIFICATIONS
c  ---------------------------------------------------------
MODE n p
NPS 100000
PRINT 110
c  ---------------------------------------------------------
c                        IMPORTANCES
c  ---------------------------------------------------------
IMP:n 1 14r 0
IMP:p 1 14r 0
c  ---------------------------------------------------------
c                      MATERIAL CARDS
c  ---------------------------------------------------------
c  ---------------------------------------------------------
c 
c  ---------------------------------------------------------
c  ---------------------------------------------------------
c  MATERIAL 1:      BORATED POLYETHYLENE
c  ---------------------------(density 1.000 g/cm^3)--------
M1     1001     -0.125355
       5010.70c -0.100000
       6000     -0.774645
c 
c  ---------------------------------------------------------
c  MATERIAL 2:      LEAD  
c  ---------------------------(density 11.34 g/cm^3)--------
M2   82207.70c   -1.0
c 
c  ---------------------------------------------------------
c  MATERIAL 3:      TUNGSTEN   
c  ---------------------------(density 19.3 g/cm^3)---------
M3   074184   -1.0
c 
c  ---------------------------------------------------------
c                    SOURCE SPECIFICATIONS
c  ---------------------------------------------------------
SDEF POS=-0.0001 0 0 AXS=1 0 0 EXT=0 VEC=1 0 0 ERG=D3 DIR=FERG=D5 RAD=D6 PAR=1
SI6   0  1.27
SP6 -21  1
SI3 H   1.000000e-11  4.000000e-09  1.000000e-08  2.530000e-08  4.000000e-08  
        5.000000e-08  6.000000e-08  8.000000e-08  1.000000e-07  1.500000e-07  
        2.000000e-07  2.500000e-07  3.250000e-07  3.500000e-07  3.750000e-07  
        4.500000e-07  6.250000e-07  1.010000e-06  1.080000e-06  1.130000e-06  
        5.000000e-06  6.250000e-06  6.500000e-06  6.880000e-06  7.000000e-06  
        2.050000e-05  2.120000e-05  2.180000e-05  3.600000e-05  3.710000e-05  
        6.500000e-05  6.750000e-05  1.010000e-04  1.050000e-04  1.160000e-04  
        1.180000e-04  1.880000e-04  1.920000e-04  2.250000e-03  3.740000e-03  
        1.700000e-02  2.000000e-02  5.000000e-02  2.000000e-01  2.700000e-01  
        3.300000e-01  4.700000e-01  6.000000e-01  7.500000e-01  8.610000e-01  
        1.200000e+00  1.500000e+00  1.850000e+00  3.000000e+00  4.300000e+00  
        6.430000e+00  2.000000e+01  
SP3 D   0.000000e+00  1.347250e-10  5.755605e-10  3.027006e-09  3.208179e-09  
        2.074746e-09  1.769118e-09  2.451712e-09  1.669221e-09  1.955100e-09  
        8.497299e-10  3.902963e-10  4.328194e-10  1.217509e-10  1.076974e-10  
        2.720949e-10  5.104581e-10  7.666115e-10  1.030489e-10  6.941840e-11  
        2.263037e-09  3.245428e-10  5.430707e-11  8.265766e-11  2.092481e-11  
        1.674524e-09  4.243564e-11  5.284753e-11  8.042856e-10  4.630245e-11  
        8.958078e-10  6.150814e-11  6.511532e-10  6.192902e-11  1.649900e-10  
        2.658318e-11  7.628556e-10  3.270343e-11  4.278063e-09  8.853359e-10  
        2.856224e-09  3.307966e-10  1.947839e-09  4.392686e-09  1.433329e-09  
        1.108646e-09  2.184004e-09  2.002630e-09  2.201239e-09  1.463608e-09  
        3.658353e-09  2.945119e-09  2.902741e-09  6.375954e-09  3.257094e-09  
        2.001929e-09  6.159548e-10  
DS5 S      101     102     103     104     105  
           106     107     108     109     110  
           111     112     113     114     115  
           116     117     118     119     120  
           121     122     123     124     125  
           126     127     128     129     130  
           131     132     133     134     135  
           136     137     138     139     140  
           141     142     143     144     145  
           146     147     148     149     150  
           151     152     153     154     155  
           156  
SI101 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP101 D   0.000000e+00  9.032100e-15  6.322850e-15  3.188030e-14  2.975210e-14  
          3.688710e-14  6.843770e-14  4.516360e-14  6.438800e-14  4.714950e-14  
          4.274800e-14  5.631480e-12  5.863390e-11  7.007790e-11  
SI102 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP102 D   0.000000e+00  6.515080e-15  2.129240e-14  5.874850e-14  7.970080e-14  
          1.316170e-13  1.668830e-13  2.507520e-13  2.248300e-13  1.213220e-13  
          1.263230e-13  1.557850e-11  2.823510e-10  2.764430e-10  
SI103 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP103 D   0.000000e+00  5.611540e-14  9.193600e-14  1.856280e-13  3.256130e-13  
          4.865340e-13  7.644800e-13  8.080850e-13  1.108560e-12  1.242980e-12  
          4.463000e-13  1.088400e-10  1.543770e-09  1.368880e-09  
SI104 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP104 D   0.000000e+00  2.675830e-14  1.151220e-13  2.473190e-13  3.730380e-13  
          5.222380e-13  7.373000e-13  1.204020e-12  1.270000e-12  7.401850e-13  
          7.221090e-13  1.054610e-10  1.711390e-09  1.385370e-09  
SI105 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP105 D   0.000000e+00  2.021070e-14  5.797370e-14  1.264970e-13  2.478300e-13  
          3.674040e-13  4.872760e-13  6.651200e-13  7.941380e-13  5.618600e-13  
          1.792910e-13  6.857110e-11  1.051690e-09  9.509770e-10  
SI106 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP106 D   0.000000e+00  2.696360e-14  4.810930e-14  1.230350e-13  1.841990e-13  
          3.194410e-13  3.843460e-13  1.129810e-12  7.634760e-13  4.777930e-13  
          1.556080e-13  1.019700e-10  9.118970e-10  7.516380e-10  
SI107 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP107 D   0.000000e+00  2.034230e-14  1.137640e-13  1.858140e-13  3.738680e-13  
          5.790170e-13  7.683290e-13  1.052860e-12  1.315520e-12  8.138190e-13  
          1.626670e-12  9.288200e-11  1.217250e-09  1.134730e-09  
SI108 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP108 D   0.000000e+00  1.547980e-14  6.449510e-14  1.350670e-13  2.543540e-13  
          3.636770e-13  1.064310e-12  7.501920e-13  9.468310e-13  5.083550e-13  
          1.649320e-13  6.819060e-11  8.389840e-10  7.577790e-10  
SI109 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP109 D   0.000000e+00  1.907750e-14  1.112300e-13  2.373060e-13  3.593250e-13  
          5.436340e-13  8.759950e-13  1.089240e-12  1.224150e-12  1.084860e-12  
          4.413980e-13  4.939960e-11  1.027750e-09  8.719640e-10  
SI110 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP110 D   0.000000e+00  1.364600e-14  5.618550e-14  1.436390e-13  1.847030e-13  
          3.016570e-13  3.976880e-13  5.429690e-13  6.548960e-13  3.794490e-13  
          1.745900e-13  3.028450e-11  4.544960e-10  3.621000e-10  
SI111 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP111 D   0.000000e+00  1.545690e-14  6.231010e-14  1.111520e-13  1.801340e-13  
          2.197580e-13  2.856540e-13  2.863460e-13  3.381000e-13  1.374090e-13  
          8.418870e-14  1.329980e-11  1.908310e-10  1.844450e-10  
SI112 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP112 D   0.000000e+00  1.173520e-14  6.931370e-14  1.273420e-13  2.323970e-13  
          2.933650e-13  3.331710e-13  4.027900e-13  4.363230e-13  2.002720e-13  
          1.338910e-13  1.643680e-11  2.164140e-10  1.977280e-10  
SI113 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP113 D   0.000000e+00  5.287620e-15  1.192490e-14  5.323530e-14  6.817450e-14  
          9.173970e-14  1.212890e-13  1.111840e-13  1.221460e-13  5.806770e-14  
          3.830630e-14  5.187040e-12  6.189710e-11  5.398540e-11  
SI114 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP114 D   0.000000e+00  2.816630e-15  1.305710e-14  4.108900e-14  4.845020e-14  
          9.647770e-14  7.863950e-14  1.100100e-13  1.275910e-13  3.039560e-14  
          2.511090e-14  3.493240e-12  4.828210e-11  5.534840e-11  
SI115 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP115 D   0.000000e+00  9.670220e-15  4.401520e-14  1.150790e-13  1.735720e-13  
          2.203150e-13  2.524670e-13  2.874310e-13  3.499270e-13  1.847080e-13  
          8.954370e-14  9.295190e-12  1.370040e-10  1.240690e-10  
SI116 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP116 D   0.000000e+00  1.721190e-14  9.776810e-14  1.970630e-13  3.219600e-13  
          4.868980e-13  5.426470e-13  5.694240e-13  6.878250e-13  3.600370e-13  
          1.751560e-13  1.960710e-11  2.510770e-10  2.363180e-10  
SI117 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP117 D   0.000000e+00  4.116340e-14  1.735730e-13  3.443290e-13  5.295310e-13  
          8.940510e-13  1.277650e-12  1.077560e-12  1.113980e-12  5.045200e-13  
          3.693340e-13  4.245380e-11  3.842510e-10  3.335810e-10  
SI118 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP118 D   0.000000e+00  9.589740e-15  2.060230e-14  5.498160e-14  7.489130e-14  
          1.072130e-13  1.451850e-13  1.696740e-13  1.609470e-13  6.848280e-14  
          7.863530e-14  1.966000e-12  5.437200e-11  4.582070e-11  
SI119 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP119 D   0.000000e+00  3.332830e-15  1.739850e-14  3.713970e-14  5.483380e-14  
          6.826180e-14  9.251400e-14  1.184500e-13  1.089020e-13  3.934000e-14  
          2.073450e-14  2.465190e-12  3.630830e-11  3.008400e-11  
SI120 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP120 D   0.000000e+00  1.573960e-13  7.844610e-13  1.665770e-12  2.686380e-12  
          3.359550e-12  4.052940e-12  4.575270e-12  4.745170e-12  2.558160e-12  
          1.905790e-12  7.919590e-11  1.146790e-09  1.010560e-09  
SI121 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP121 D   0.000000e+00  2.821240e-14  1.379800e-13  3.039310e-13  4.962380e-13  
          6.927500e-13  9.145070e-13  8.896470e-13  9.870820e-13  4.976870e-13  
          3.356340e-13  1.552210e-11  1.655790e-10  1.381580e-10  
SI122 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP122 D   0.000000e+00  7.112610e-15  2.845320e-14  5.907840e-14  1.112830e-13  
          1.226980e-13  1.793360e-13  1.500510e-13  1.929380e-13  6.640580e-14  
          6.642200e-14  1.762590e-12  2.870780e-11  2.285290e-11  
SI123 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP123 D   0.000000e+00  7.848480e-15  3.771800e-14  1.005190e-13  1.240030e-13  
          1.815710e-13  2.166590e-13  2.729460e-13  2.286250e-13  1.149020e-13  
          9.084060e-14  4.143530e-12  4.199030e-11  3.514820e-11  
SI124 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP124 D   0.000000e+00  2.110740e-15  1.117890e-14  2.302770e-14  3.819030e-14  
          5.707460e-14  6.524020e-14  8.130670e-14  7.912780e-14  4.186080e-14  
          6.144940e-14  3.632930e-13  9.060650e-12  1.104030e-11  
SI125 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP125 D   0.000000e+00  1.876540e-13  8.335730e-13  1.763530e-12  2.659620e-12  
          3.878560e-12  4.866790e-12  5.742580e-12  5.951450e-12  2.836830e-12  
          2.088280e-12  5.866160e-11  8.330800e-10  7.519740e-10  
SI126 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP126 D   0.000000e+00  6.240960e-15  3.156020e-14  5.828790e-14  1.137540e-13  
          1.230450e-13  1.565680e-13  1.816130e-13  1.840610e-13  1.254310e-13  
          8.745170e-14  1.277030e-12  2.140550e-11  1.868510e-11  
SI127 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP127 D   0.000000e+00  4.541500e-15  2.154240e-14  5.045310e-14  7.197840e-14  
          1.070080e-13  1.453270e-13  1.570290e-13  1.603230e-13  8.088360e-14  
          4.438810e-14  1.521860e-12  2.892760e-11  2.155460e-11  
SI128 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP128 D   0.000000e+00  1.088190e-13  4.615960e-13  9.899090e-13  1.613730e-12  
          2.109990e-12  2.601160e-12  3.034690e-12  3.248250e-12  1.551200e-12  
          1.058540e-12  3.423970e-11  4.078350e-10  3.454330e-10  
SI129 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP129 D   0.000000e+00  6.472140e-15  2.653200e-14  6.919680e-14  9.802430e-14  
          1.261860e-13  1.612680e-13  1.971520e-13  2.112000e-13  1.079830e-13  
          5.723740e-14  2.548700e-12  2.346760e-11  1.922490e-11  
SI130 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP130 D   0.000000e+00  1.299650e-13  5.283010e-13  1.245260e-12  1.989640e-12  
          2.893700e-12  3.445190e-12  3.727660e-12  3.990370e-12  2.011020e-12  
          1.448760e-12  3.617690e-11  4.444100e-10  3.938110e-10  
SI131 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP131 D   0.000000e+00  1.040120e-14  3.956770e-14  8.699240e-14  1.399540e-13  
          1.870430e-13  2.601790e-13  2.681440e-13  2.547480e-13  1.387410e-13  
          9.647010e-14  2.471300e-12  3.143470e-11  2.611990e-11  
SI132 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP132 D   0.000000e+00  1.057850e-13  4.460160e-13  8.897590e-13  1.531900e-12  
          2.157350e-12  2.797080e-12  3.245710e-12  3.243940e-12  1.585710e-12  
          9.580660e-13  2.661290e-11  3.250500e-10  2.825290e-10  
SI133 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP133 D   0.000000e+00  1.027120e-14  4.455740e-14  8.705360e-14  1.536870e-13  
          2.056540e-13  2.698000e-13  2.971010e-13  3.424620e-13  1.535700e-13  
          1.021860e-13  2.665880e-12  3.102900e-11  2.656780e-11  
SI134 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP134 D   0.000000e+00  3.100510e-14  1.104420e-13  2.131250e-13  3.958230e-13  
          5.599220e-13  7.306860e-13  8.229640e-13  8.835930e-13  4.308290e-13  
          2.170710e-13  9.398260e-12  7.542750e-11  7.576880e-11  
SI135 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP135 D   0.000000e+00  4.092830e-15  1.648730e-14  3.569890e-14  6.541370e-14  
          9.343790e-14  1.326170e-13  1.324470e-13  1.304910e-13  7.443800e-14  
          3.406270e-14  7.108910e-13  1.349990e-11  1.165320e-11  
SI136 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP136 D   0.000000e+00  1.261980e-13  5.561010e-13  1.098510e-12  1.740280e-12  
          2.638890e-12  3.383850e-12  3.826020e-12  4.000370e-12  2.007540e-12  
          1.381650e-12  2.910720e-11  3.776580e-10  3.353310e-10  
SI137 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP137 D   0.000000e+00  5.549810e-15  3.077460e-14  5.399880e-14  7.499260e-14  
          1.098850e-13  1.550840e-13  1.831980e-13  1.793750e-13  6.890740e-14  
          4.524180e-14  1.369220e-12  1.496300e-11  1.546420e-11  
SI138 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP138 D   0.000000e+00  8.341210e-13  3.327500e-12  6.921930e-12  1.129460e-11  
          1.561420e-11  1.988100e-11  2.286730e-11  2.385220e-11  1.185900e-11  
          7.737410e-12  1.799540e-10  2.110240e-09  1.863680e-09  
SI139 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP139 D   0.000000e+00  2.204180e-13  7.776330e-13  1.592980e-12  2.569750e-12  
          3.797310e-12  4.698650e-12  5.386600e-12  5.518750e-12  2.756000e-12  
          1.797760e-12  3.455700e-11  4.250660e-10  3.965970e-10  
SI140 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP140 D   0.000000e+00  7.767060e-13  2.725410e-12  5.241100e-12  8.268870e-12  
          1.187580e-11  1.501730e-11  1.725610e-11  1.801010e-11  8.903770e-12  
          5.845950e-12  1.164930e-10  1.398420e-09  1.247390e-09  
SI141 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP141 D   0.000000e+00  9.673100e-14  3.632820e-13  6.225710e-13  1.005670e-12  
          1.268930e-12  1.843940e-12  2.004180e-12  2.017690e-12  1.000680e-12  
          5.805980e-13  1.373530e-11  1.627560e-10  1.435010e-10  
SI142 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP142 D   0.000000e+00  5.579760e-13  2.522910e-12  4.219440e-12  6.298560e-12  
          8.480870e-12  1.048050e-11  1.200360e-11  1.263360e-11  5.878820e-12  
          3.921930e-12  8.188520e-11  9.513890e-10  8.475670e-10  
SI143 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP143 D   0.000000e+00  6.035760e-13  5.170040e-12  1.024670e-11  1.433760e-11  
          1.837330e-11  2.191010e-11  2.477580e-11  2.571170e-11  1.270640e-11  
          8.768540e-12  1.847120e-10  2.174700e-09  1.890670e-09  
SI144 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP144 D   0.000000e+00  1.191240e-13  1.010890e-12  3.097990e-12  4.589700e-12  
          5.580580e-12  6.659220e-12  7.587070e-12  7.909250e-12  3.973530e-12  
          2.845220e-12  6.006090e-11  7.277170e-10  6.021790e-10  
SI145 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP145 D   0.000000e+00  8.601490e-14  5.715670e-13  2.202980e-12  3.423150e-12  
          4.425940e-12  4.642620e-12  5.507710e-12  5.870550e-12  2.955270e-12  
          2.040850e-12  4.805980e-11  5.559850e-10  4.728750e-10  
SI146 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP146 D   0.000000e+00  1.650330e-13  8.686020e-13  3.931260e-12  6.622390e-12  
          8.743580e-12  1.027860e-11  1.076890e-11  1.118700e-11  5.691740e-12  
          3.949290e-12  9.882530e-11  1.089920e-09  9.330520e-10  
SI147 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP147 D   0.000000e+00  1.169020e-13  5.302890e-13  2.266470e-12  4.948250e-12  
          6.646770e-12  8.454640e-12  9.397210e-12  9.835120e-12  5.097470e-12  
          3.593410e-12  9.519270e-11  9.931960e-10  8.633550e-10  
SI148 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP148 D   0.000000e+00  1.122040e-13  4.253680e-13  1.737210e-12  4.598920e-12  
          6.793110e-12  7.946190e-12  9.672720e-12  1.030260e-11  5.391010e-12  
          4.061420e-12  1.009560e-10  1.106970e-09  9.422720e-10  
SI149 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP149 D   0.000000e+00  7.896020e-14  2.421610e-13  9.045730e-13  2.633780e-12  
          4.341780e-12  5.576940e-12  5.933980e-12  6.928160e-12  3.602070e-12  
          2.483850e-12  6.893010e-11  7.282540e-10  6.336980e-10  
SI150 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP150 D   0.000000e+00  1.758910e-13  5.588540e-13  1.811330e-12  5.202020e-12  
          1.023540e-11  1.401110e-11  1.635780e-11  1.762490e-11  9.245540e-12  
          6.572360e-12  1.766280e-10  1.869170e-09  1.530760e-09  
SI151 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP151 D   0.000000e+00  1.109880e-13  3.630510e-13  9.063070e-13  2.724250e-12  
          6.019360e-12  9.384790e-12  1.186260e-11  1.335830e-11  7.181270e-12  
          5.265850e-12  1.481920e-10  1.510780e-09  1.228970e-09  
SI152 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP152 D   0.000000e+00  9.720330e-14  3.231630e-13  6.586950e-13  2.163480e-12  
          4.438470e-12  8.269310e-12  1.084610e-11  1.292830e-11  7.105920e-12  
          5.229700e-12  1.366810e-10  1.486620e-09  1.227380e-09  
SI153 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP153 D   0.000000e+00  1.190170e-13  4.372820e-13  9.538860e-13  2.778660e-12  
          7.532030e-12  1.332290e-11  2.071730e-11  2.720270e-11  1.548560e-11  
          1.159170e-11  3.531330e-10  3.281070e-09  2.641610e-09  
SI154 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP154 D   0.000000e+00  6.832350e-14  1.886600e-13  3.940410e-13  9.387780e-13  
          2.834470e-12  6.924640e-12  1.099470e-11  1.420050e-11  8.467840e-12  
          6.624350e-12  1.900680e-10  1.702360e-09  1.313030e-09  
SI155 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP155 D   0.000000e+00  3.456260e-14  1.056450e-13  1.777180e-13  3.540140e-13  
          9.422340e-13  2.712860e-12  6.030110e-12  9.578970e-12  5.900300e-12  
          4.603180e-12  1.352630e-10  1.016270e-09  8.199560e-10  
SI156 H   6.123234e-17  1.736482e-01  3.420201e-01  5.000000e-01  6.427876e-01  
          7.660444e-01  8.660254e-01  9.396926e-01  9.848078e-01  9.975641e-01  
          9.986295e-01  9.993908e-01  9.998477e-01  1.000000e+00  
SP156 D   0.000000e+00  2.924290e-15  7.561940e-15  2.258180e-14  6.232430e-14  
          1.966240e-13  5.864690e-13  1.379070e-12  2.734680e-12  1.907180e-12  
          1.662650e-12  5.002270e-11  3.169430e-10  2.404270e-10  
c  ---------------------------------------------------------
c                       TALLY CARDS
c  ---------------------------------------------------------
F31:N 41
FS31  21
E31   1.000000e-11  4.000000e-09  1.000000e-08  2.530000e-08  4.000000e-08  
      5.000000e-08  6.000000e-08  8.000000e-08  1.000000e-07  1.500000e-07  
      2.000000e-07  2.500000e-07  3.250000e-07  3.500000e-07  3.750000e-07  
      4.500000e-07  6.250000e-07  1.010000e-06  1.080000e-06  1.130000e-06  
      5.000000e-06  6.250000e-06  6.500000e-06  6.880000e-06  7.000000e-06  
      2.050000e-05  2.120000e-05  2.180000e-05  3.600000e-05  3.710000e-05  
      6.500000e-05  6.750000e-05  1.010000e-04  1.050000e-04  1.160000e-04  
      1.180000e-04  1.880000e-04  1.920000e-04  2.250000e-03  3.740000e-03  
      1.700000e-02  2.000000e-02  5.000000e-02  2.000000e-01  2.700000e-01  
      3.300000e-01  4.700000e-01  6.000000e-01  7.500000e-01  8.610000e-01  
      1.200000e+00  1.500000e+00  1.850000e+00  3.000000e+00  4.300000e+00  
      6.430000e+00  2.000000e+01
F41:P 41
FS41  21
E41   1.000000e-11  4.000000e-09  1.000000e-08  2.530000e-08  4.000000e-08  
      5.000000e-08  6.000000e-08  8.000000e-08  1.000000e-07  1.500000e-07  
      2.000000e-07  2.500000e-07  3.250000e-07  3.500000e-07  3.750000e-07  
      4.500000e-07  6.250000e-07  1.010000e-06  1.080000e-06  1.130000e-06  
      5.000000e-06  6.250000e-06  6.500000e-06  6.880000e-06  7.000000e-06  
      2.050000e-05  2.120000e-05  2.180000e-05  3.600000e-05  3.710000e-05  
      6.500000e-05  6.750000e-05  1.010000e-04  1.050000e-04  1.160000e-04  
      1.180000e-04  1.880000e-04  1.920000e-04  2.250000e-03  3.740000e-03  
      1.700000e-02  2.000000e-02  5.000000e-02  2.000000e-01  2.700000e-01  
      3.300000e-01  4.700000e-01  6.000000e-01  7.500000e-01  8.610000e-01  
      1.200000e+00  1.500000e+00  1.850000e+00  3.000000e+00  4.300000e+00  
      6.430000e+00  2.000000e+01

