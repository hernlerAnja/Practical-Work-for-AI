
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
        
        load "data/6EHU.pdb", protein
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
 
        load "data/6EHU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3828,3899,3790,3792,4144,3789,3951,4647,4127,4677,4678,4679,4680,3800,3802,3760,3794,3795,3798,4728,3758,3761,4098,4101,4102,4100,4125,4126,4671] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1928,1294,1021,1876,1878,1880,1065,1868,1874,1063,953,987,988,991,993,995,981,990,982,1019,1858,1864,1866,1860,1925,1872,1318,985,1293,954,1092,1337,983,951,1319,1291,1840,1295,1144,1320] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3562,4237,4245,4107,4134,4233,4236,4135,4136,3740,3739,3741,3338,3561,3694,3696,3698,3699,3563,3234,3168,3169,3170,3174,3351,3352,3353,3354,3355,3235,3181,4110,4112,4113,3175,3178,3180,4247,4251,3219] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [5354,5355,5356,5353,5352,5377,4885,4889,5142,5165,5167,5168,5170,4917,5389,5179,5181,5318,5180,5320,830,821,845,5134,5132,4883,4888,823,286,822,283,815,5328,292,293,294,5316,5322,5323,5297,5294,5296,288,5298] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [544,412,546,547,428,531,548,891,892,890,754,756,1444,1306,1300,1304,1429,1430,1426,374,889,887,1328,1329,369,371,426,368,427,363,1305,532,915] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [4249,4251,3193,3219,4268,4269,4270,4278,3414,3197,3209,3211,3202,3203,3206,3399,3396,3393,3415,4276,4277,4080,4415,3199,4403,4096,3454,3398,3412,3413,3218] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [386,390,395,1444,1442,1273,592,412,589,607,608,1462,1463,1469,1471,1461,1464,1470,402,404,586,399] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [330,556,802,809,810,813,853,814,799,866,307,538,554,329,331,281,306,282,816] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3606,3114,3088,3602,3607,3136,3113,3089,3609,3616,3620,3608,3673,3345,3669,3603,3138,3361,3658,3137,3363] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [369,371,426,361,362,368,427,363,1329,933,934,1303,1305,1306,1300,1304,1429,374,428] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1765,1207,75,1792,2671,2665,1757,1766,2670,2659,1769,1181,2676,2668,2669,2648,2617,65,48,1751,2625] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2000,2287,2289,2032,2035,2295,2296,2258,2256,1684,1690,2229,2225,2228,2002,2006,2233,2008] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1484,1485,1537,180,1516,1518,173,174,200,201,202] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        