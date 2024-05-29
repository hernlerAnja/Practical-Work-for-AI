
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/8GDS.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/8GDS.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [7563,7564,7572,7573,7574,7575,7567,7570,7449,7450,7453,6781,6782,6785,7586,6749,6756,6750,6855,7557,7560,6923,7553,7556,7552,6825,6826,6790,6793,6819,6922,6528,6670,7569,6552,7571,6500,6503,6530,6533,6551,6553,6673,6529,6506,7057,6688,6732,6731,6527,6689,8709,7122,7123,7124,6924,6657,7476,7477,7076,7098,8711,8712,7056,7071,7072,7069,7070,6496,6493,6499,6501,6494,8733,8713] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1134,1603,1604,1605,1606,1484,1485,1488,1511,1512,1159,591,593,1129,1600,1602,744,1107,727,728,729,587,588,745,963,964,965,1111,1104,1105,1106,867,1091,1092,825,784,783,1588,1595,1608,1609,1610,1591,1607,1597,1598,1599,1618,1621,958,896,1587,1472,1473,822,866,824,823,562,564,712,608,609,725,566,569,571,572,2688,2690,2692,560,2693] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [4451,4550,4099,4452,5690,5692,5693,4549,4424,3490,4547,3493,3504,4428,3505,3506,3508,4069,4073,4074,4092,4097,4098,4119,5678,5700,4113,5699,5701,4425,4426,3537,3653,4044,4045,4046,4047,4548,3655,3656,3521,3516,4051,3899,4546,4535,4539,4545,4542,4543,4551,3898,3892,3897,4531,4532,4536,4031,4032,3801,3800,3830,3486,3484,5717,3488,5694,5697,5698,3536,3640] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [9560,10070,10071,10072,10073,10477,9680,10055,10572,10574,10576,9681,9683,10058,9538,9540,9536,10095,10100,9925,10077,10125,9519,10098,10099,11687,10124,10478,11689,11690,10123,10057,9827,10438,10439,10451,10454,10573,10575,10423,10672,10139,10557,10558,10561,10567,10570,10569,10568,9826,10565,9511,9559,9509,9667,10089,9513,9507,9666] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [8128,8129,8099,2300,2293,2318,7757,7758,2296,2298,7759,7724,8310,8308,2305,8315,8329,8328,2319,7725,7727,8121,2107,2126,2127,2299,2131,1759,2111,2108,1760,1762,1763,1790] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [3757,3760,3801,3800,3791,3756,4565,3802,4031,4032,3714,3715,3671,4535,4539,4542,4543,4551,4552,4553,4554,4047,3655,3672] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [9822,9826,10565,9782,9783,10561,10567,10577,10578,10579,10580,10569,10568,9820,10591,9683,10058,9698,9699,9741,9786,9788,10057,9827] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [3772,3814,3750,3751,3752,3016,3052,5870,5885,5862,5836,3748,3775,5844,3742,3743,3746,3747,3749,3811,3030,3031,3034,3027,3072,394,3033,381,382,383,393,358] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [6036,6018,6023,6027,6025,6040,6775,6839,6797,6800,6836,6837,6777,6042,6043,9314,9315,9316,8884,8886,8901,8906,6083,8912,8914,6061] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [2354,1858,1672,1673,2303,2307,2308,7633,2351,2353,7632,7643,7644,7645,7795,7798,7800,7794,2312,7630,1658,7631,1845,1846,1847,1665] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [9837,9840,9807,9776,9777,9778,6307,11858,9798,11856,9040,9044,9045,9048,9049,9054,9051,9052,6322,6306,9070,9092,9033,9038,9039] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [3596,3601,3581,3580,3582,3937,3939,3430,3427,3428,3399,3634,1,16,18,20,3378,5,5924,28,5909,5911,3396] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [8962,8925,8927,6403,6406,6596,6962,6964,6409,6597,6598,6612,8954,6438,6440,8950,6388,8935,8939] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [706,1005,475,1003,2913,2921,2925,2918,2911,2948,472,668,654,652,653,506,504,673,674,2936,454,2939,2940,469] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [136,158,2872,2887,2895,102,2898,3297,816,818,838,880,107,108,109,110,877,2900,879,117,118,120,113,114] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [8312,8313,1822,2308,8322,1858,1672,1673,7833,7836,8317,8318,7644,7645,7630,1659,1660,1661,1671,1823,8361,8363,8364,8359,7825,7824,7823,7829,7635,7826,7637] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [5937,5926,9604,9619,5941,9605,9965,11904,5947,11898,11899,9422,9963,9964,5930,9451,9453,9419,9401,9603,9624] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [11678,10188,10148,10178,10189,11595,11600,10113,11605,11608,11610,10153,10154,10485,10155] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [8839,6190,6191,8781,8799,8780,8765,8770,8771,8848,7002,7003,6163,6152,6153,6156,6189,7006,8836] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [11743,11746,11808,11811,11753,10003,11820,10004,10007,11762,9165,9198,9161,9200,9162,9172,11771,11737,11742] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [227,238,265,2760,2756,2757,2825,266,2784,2785,226,2831,1043,2834,1044,2751,231,1047,264] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [7569,7571,6533,6553,6531,6506,6515,7437,7438,7568,7570,7450,7453,7564,7565] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [5681,4087,4162,5594,4459,4122,4124,4152,5592,5599,5604,5609,4127,4129] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [4419,4420,4114,4686,4662,4676,4675,4677,4138,4922,4923,4427,4409,4411,4660,4965,4684,4674,4113] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [7943,7677,7692,7700,7690,7691,7693,7985,7686,7444,7942,7139,7434,7436,7452,7702,7138] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [7354,7356,7824,7860,7863,8359,8389,8380] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        