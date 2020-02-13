{\rtf1\ansi\ansicpg1252\cocoartf2512
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red9\green136\blue90;}
{\*\expandedcolortbl;;\csgenericrgb\c0\c0\c100000;\csgenericrgb\c3529\c53333\c35294;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\ri-340\sl315\partightenfactor0

\f0\fs21 \cf2 import\cf0  numpy \cf2 as\cf0  np\
\
\cf2 def\cf0  de(fobj, bounds, mut=\cf3 0.8\cf0 , crossp=\cf3 0.7\cf0 , popsize=\cf3 20\cf0 , its=\cf3 1000\cf0 ):\
    dimensions = \cf2 len\cf0 (bounds)\
    pop = np.random.rand(popsize, dimensions)\
    min_b, max_b = np.asarray(bounds).T\
    diff = np.fabs(min_b - max_b)\
    pop_denorm = min_b + pop * diff\
    fitness = np.asarray([fobj(*np.full(dimensions, ind)) \cf2 for\cf0  ind \cf2 in\cf0  pop_denorm])\
    best_idx = np.argmin(fitness)\
    best = pop_denorm[best_idx]\
    \cf2 for\cf0  i \cf2 in\cf0  \cf2 range\cf0 (its):\
        \cf2 for\cf0  j \cf2 in\cf0  \cf2 range\cf0 (popsize):\
            idxs = [idx \cf2 for\cf0  idx \cf2 in\cf0  \cf2 range\cf0 (popsize) \cf2 if\cf0  idx != j]\
            a, b, c = pop[np.random.choice(idxs, \cf3 3\cf0 , replace = \cf2 False\cf0 )]\
            mutant = np.clip(a + mut * (b - c), \cf3 0\cf0 , \cf3 1\cf0 )\
            cross_points = np.random.rand(dimensions) < crossp\
            \cf2 if\cf0  \cf2 not\cf0  np.\cf2 any\cf0 (cross_points):\
                cross_points[np.random.randint(\cf3 0\cf0 , dimensions)] = \cf2 True\cf0 \
            trial = np.where(cross_points, mutant, pop[j])\
            trial_denorm = min_b + trial * diff\
            f = fobj(*np.full(dimensions, trial_denorm))\
            \cf2 if\cf0  f < fitness[j]:\
                fitness[j] = f\
                pop[j] = trial\
                \cf2 if\cf0  f < fitness[best_idx]:\
                    best_idx = j\
                    best = trial_denorm\
        \cf2 yield\cf0  best, fitness[best_idx]\
\
func = \cf2 lambda\cf0  x, y: x**\cf3 4\cf0  + y**\cf3 2\cf0  + \cf3 1\cf0 \
\
res = \cf2 list\cf0 (de(func, bounds=[(\cf3 -100\cf0 , \cf3 100\cf0 )] * \cf3 2\cf0 , its = \cf3 500\cf0 ))\
\cf2 print\cf0 (res[\cf3 -1\cf0 ])\
}