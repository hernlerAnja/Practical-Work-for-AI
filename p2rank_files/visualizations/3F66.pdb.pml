
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
        
        load "data/3F66.pdb", protein
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
 
        load "data/3F66.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3634,3635,3636,3459,3630,3631,3633,3632,2538,2540,2531,2537,3073,3074,3473,3066,3069,3075,3445,3017,3022,2704,3015,2600,2601,2602,2535,2534,2910,3562,3598,3563,3472,3041,3042,3027,3038,3043,3474] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1387,1388,1389,1390,269,270,272,263,266,267,800,417,810,812,323,324,1394,795,275,1392,851,844,847,1231,1232,819,820,821,816,852,853,1391,1212,1321,1393,1355,1320,1356,668,669,1203,1230] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1897,1942,1951,1957,1958,1963,1830,1803,1786,1814,1815,1816,1820,1823,3502,3063,3064,3525,3527,1797,3054,1798,1799,3174,3175,3176,3163,3165,1728,3057,3058,3141,3061,3049,3056,1964,3051,3053] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1769,1987,3023,1986,1998,2000,2001,3507,1770,1999,1771,3550,2885,2874,2899,952,3495,3496,3498,3045,3029,3533,3534,3549,3024,2919,2921,2938,3514,3515,3516,1768,904,921,924] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3216,3218,3240,3242,3271,3272,3274,3263,3265,3209,3215,4551,4552,4553,3213,3214,4598,3211,3212,3511,3250,3252,3520,4611,4612,4613,3221,4621,4597,909,3295,3533,3534,2894,2895,3273,3293,2885] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1437,1424,1431,1432,1433,1442,1459,1844,1444,1445,1810,1812,4605,4607,1508,1510,1511,1793,1827,1787,1826,4602,1439,4593,4600,4603,4604,1428,1837,1832,1524,1796] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3313,4419,4423,4417,4414,3341,4434,4430,3340,3854,3855,3864,3862,3863,3853] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [686,592,595,591,1332,1344,1356,796,665,1337,1339] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1347,1343,567,1345,1351,505,534,537,302,303,304,305,306,1364,1365,1360,301,446,447,458,459,467,474,472,460] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3372,3374,3579,3577,3583,2803,2825,2827,2801,2804,2805,2808,2828] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3611,2583,2585,3604,3605,3606,3406,3408,3410,3706,3707,3387,3402,3607] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1634,1635,1636,2182,2183,2199,1110,1080,1108,1109,1111,1626,1628,2184,2195,1082] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [869,870,1206,1440,1523,1796,1437,1784,1787,1439] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        