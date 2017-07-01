'''
This code will be great.
'''

import numpy as np
import time
import matplotlib.pyplot as plt

initial_time = time.time()

#pull filter data
data10cm = np.loadtxt('filter_data_10cm.txt')


#plot data
plt.scatter(data10cm[:,1], data10cm[:,2], s=2, c='k')

highft = []
for filt in data10cm:
    if filt[1] > 0.875:
        highft.append(list(filt))
print len(highft)

highft = np.array(highft)
print np.argmax(highft[:,2])

best = highft[np.argmax(highft[:,2])]

print 'Filter {} has a FT Ratio of  {} and a N/G Ratio of {}'.format(int(best[0]), best[1], best[2])

print 'Script finished in {} seconds.'.format(time.time() - initial_time)