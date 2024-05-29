
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
        
        load "data/3DU8.pdb", protein
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
 
        load "data/3DU8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1186,1190,238,240,1197,1301,1303,1302,235,1316,1317,371,372,1318,1185,785,1214,1296,1297,1300,1295,481,1157,1324,1320,1433,1322,1321,1147,1407,1408,1173,1174,368,370,204,206,208,210,241,257,258,259,355,773,1213,756,759,734,739,772,766,222,225,229,231,232,4665,4470,4461,4462,4495,1423,4666,1425,4650,4652,4656,4658,4661,4667,4662,4452,4471,4445] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1789,3985,2913,2914,2917,3054,3998,3984,2920,2918,2895,2903,2904,2921,2922,2923,2941,2892,2885,2891,3053,1770,3839,4006,3999,4000,1763,3855,3856,2886,3867,3868,3869,3896,3879,3976,3977,3982,3983,3467,3895,2939,2940,3438,3441,2888,2890,3448,3978,3979,3163,3270,3421,3052,3416,3037,1788,2907,2911,1779,1781,1813,1780] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3061,3063,3394,3352,2947,2949,2951,2948,2950,2952,3333,2710,2711,3335,2724,2843,3044,3045,2864,2866,2841,2865] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1525,4094,4098,4101,4207,1419,4096,4199,1760,1766,1771,1798,1772,1488,1489,1490,1517,1416,4442,4448,4449,4479,4480,4453,4454,1451,4171,4172,4133,4120,4170] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4666,4220,1425,4650,4651,4655,4656,4657,4658,4667,4659,4660,4664,4485,4462,4495,4487,1423,4906,4222,4561,4605,4606,4488,4520,4562] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1968,1805,1838,1979,1985,1836,1879,1880,4107,1538,1540,1982,1969,1973,1974,1970,1971,1975,1976,1977,1978,1924,1873,1803,1806] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [266,268,270,159,161,29,671,712,651,670,267,269,182,183,184,28,381] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4115,4006,4000,4002,4090,3162,3998,3143,3155,3159,1780,4105,1968,1984,1985,4107,1813,1781,1788] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [914,859,943,947,948,2444,845,857,844,846,847,1232,1234,1235,822,946,821,983,984] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3628,3666,3596,3627,3629,3630,3916,3541,3603,3914,3917,3539,3457,3504,3503,3903] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1588,1589,1590,1351,1594,1618,2285,2273,2276,2278,2585,2586,1591,1582,1584,1578,1581,1583,1352,1088,1090,1087] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4271,3772,4270,3769,4263,4264,4266,3770,4949,4268,4272,4273,4276,4938,4958,4960,5267,5268,4967] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5356,5358,5360,5363,5352,5101,5158,5086,5165,5163,5170,5103,5193,5195] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        